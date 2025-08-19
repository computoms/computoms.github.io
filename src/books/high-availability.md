---
image: high-availability.jpg
title: High Availability under Linux
subtitle: From infrastructure to orchestration
authors: Charles Sabourdin, Sébastien Rohaut
category: tech
date: 2025-08-19
published: 2024
---

# High Availability under Linux - Haute disponibilité sous Linux

[BOOK_HEADER]

[TOC]

# ChatGPT's summary

## 📘 **Genre**

Infrastructure & DevOps / High Availability (HA) / Linux Systems

---

## 💡 **Core Idea**

**Ensuring availability, redundancy, and reliability of Linux-based services—from hardware to orchestration—by applying DevOps principles.**
This book guides system engineers to build highly available environments across all layers: infrastructure, services, automation, orchestration, and resilience.

---

## 🧠 **Key Concepts & Lessons**

### 1. **Fundamentals of High Availability**

The book begins with designing a Java application running on Tomcat, then builds a fault-tolerant architecture using RAID, network bonding, DNS, etc.—focusing on HA best practices at the infrastructure level.

---

### 2. **Automation with Docker and Ansible**

The authors introduce a demo app as a *guiding thread* to demonstrate how to automate image creation and deployment using Docker and Ansible—laying the foundation of a DevOps workflow.

---

### 3. **Network & Service Availability**

You’ll learn how to make your network and services resilient using load balancers and tools like **NGINX**, **HAProxy**, **VRRP with Keepalived**, and **Quagga**—covering IP failover and routing redundancy.

---

### 4. **Orchestration with Kubernetes**

The book then shifts to orchestration, introducing **Kubernetes** step by step using **Minikube**, **kubectl**, and the **API**—covering how to abstract and schedule resources for highly available deployments.

---

### 5. **Advanced Kubernetes Deployment**

Deep dive into core Kubernetes objects:

* **Pods**, **ReplicaSets**, **Deployments**
* **Services**, **Endpoints**
* **ConfigMaps**, **Secrets**
* **StatefulSets**, **PersistentVolumes**, **StorageClasses**
* **Ingress controllers**, **Jobs**, **CronJobs**, **DaemonSets**

---

### 6. **High Availability Storage**

The book explores challenges in storage HA, like **single points of failure**, and how to mitigate them using **redundant NFS clusters**, **XFS**, and discusses the pros/cons of NAS/SAN architectures.

---

### 7. **Beyond HA: Disaster Recovery, Security, Monitoring**

It goes further than pure availability, tackling real-world production needs:

* **Disaster Recovery Planning (DRP)**: backup strategies, failover protocols, externalization, testing
* **Security**: least privilege principle in containers, Kubernetes network policies, RBAC, firewalls, update cycles
* **Monitoring**: metrics (Nagios, Centreon, SNMP), tracing, autoscaling using Kubernetes metrics APIs
* **Cloud-native storage**: Ceph, MinIO, GlusterFS, Rook, OpenEBS

---

## 📦 **Structure of the Book**

1. Infrastructure & essential services
2. Containers (Docker)
3. Load balancing & service exposure
4. Orchestration
5. Kubernetes deployments
6. HA Storage systems
7. Kubernetes clustering & final integration
8. Advanced topics: DRP, security, monitoring, cloud storage

---

## ✅ **What Makes It Stand Out**

* **Step-by-step approach**, illustrated with a running demo app (Java + Tomcat)
* **Comprehensive coverage**: from physical servers to automated orchestration
* **Hands-on examples** and code available via GitHub
* **Focus on real-world reliability**: including backup, disaster recovery, and proactive monitoring

---

## 👥 **Who Should Read This**

* **System administrators and DevOps engineers** looking to design resilient Linux systems
* **Infrastructure engineers** working with containers, Kubernetes, load balancers, or storage
* **Tech leads or sysadmins** who want to implement high availability, disaster recovery, or continuous monitoring practices

---

## 🧾 **Final Thoughts**

This book is a **comprehensive toolbox for building highly available Linux infrastructures**, from bare metal to fully orchestrated Kubernetes clusters. Structured, practical, and deeply rooted in DevOps principles, it equips engineers with everything they need to build fault-tolerant, automated, secure, and monitored systems that stand the test of time.
