---
date: 2025-08-01
title: Terraform AzureAD - Safe Grant Admin Consent pipeline
draft: True
---

This articles explains one way of building a safe CI/CD pipeline to apply the "Admin Consent" on AzureAD AppRegistrations created by Terraform.

[TOC]

# 1. Context

Azure AD uses [AppRegistration](https://learn.microsoft.com/en-us/entra/identity-platform/quickstart-register-app) objects to represent the identity of a web application. This object is used to configure the security related settings of the application, such as authentication and authorization.

In the _Expose an API_ settings of this Azure AD object, it is possible to declare scopes allowing to authorize a client application to call the API exposed (usually through its access_token scope list). Some of these scopes can require the "Admin Consent" for higher-priviledged operations, as an extra security measure.

To authorize a client application to access a web API, you need to [configure the app permissions](https://learn.microsoft.com/en-us/entra/identity-platform/quickstart-configure-app-access-web-apis) in the client AppRegistration settings. After this step, if the scope declared in the web API requires admin consent, you need to have an admin account (with Cloud Administrator role) in order to grant the consent on behalf of all users (so they're not prompted to do so). This is especially the case for external APIs, such as Microsoft Graph API.

# 2. Use case and process workflow

Here is a simple use case to demonstrate the need of a grant admin workflow.

We are developing two web APIs, `api-a` and `api-b`. Each of these web APIs are assigned an AppRegistration on Azure AD Portal to manage their security related features. 

<div class="w3-center">
<img src="images/terraform_azure-ad-grant-admin-consent_01.png" alt="Use case: API-A calls API-B" />
</div>

## 2.1. Why do we need a safe admin consent workflow

`api-a` needs to call `api-b`, so we need to expose an API on `api-b` and authorize `api-a` to access this exposed API. Now, imagine that `api-b` exposes an API that can perform dangerous operations : you want to restrict calling applications such that an administrator approves the authorization requests from calling apps. This can be done by setting the "Who can consent" to "Admins only" on Azure Portal.

Another use case : your `api-a` needs to access a resource of the Microsoft Graph API. In this case, the admin consent is enabled by default.

Terraform can create the AppRegistrations of `api-a` and `api-b`, and set the correct permissions.

It can also apply the admin consent for us, but for this to work, it needs a high-priviledged service principal with the `Directory.ReadWrite.All` role (or your need the `Global Administrator` role if connected with a user principal), see [Terraform Registry](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_delegated_permission_grant). This is a high-level role that needs care before being assigned to any service principal, because of security reasons.

## 2.2. The Grant Admin Terraform configuration and repository

In order to avoid using a highly priviledge service principal to perform "standard" Terraform operations (such as creating and configuration the AppRegistrations), we need to separate the two sets of operations:

- Perform "standard" Terraform operations using a service principal `sp1`
- Perform the Admin Consent grant operation using a high priviledge service principal `sp2` 
- Protect the grant operation using Terraform built-in validators and a whitelist of access rights, as well as git RBAC

Here is the proposed configuration using two git repositories:

- `infra`: stores Terraform configuration for creating the infrastructure. To be used with a standard service principal.
- `admin-operations`: stores a protected Terraform configuration for applying the admin consent. Used with a high-privileged service principal. This repository must be configured so that a write modification must be reviewed by an Administrator of the system/infrastructure.

## 2.3. Hardening security with validations and white filters

### 2.3.1. Adding validations to terraform inputs

### 2.3.2. Filtering on allowed roles

