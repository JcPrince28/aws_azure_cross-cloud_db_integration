# Azure & AWS Cross-Cloud Database Integration (Lab Project) 🌐

## Overview
This lab project explores **cross-cloud networking** by integrating **AWS RDS MySQL** and **Azure MySQL** via a **site-to-site VPN** to a **containerized phpMyAdmin instance** running on **Azure App Service** providing unified database management across both public cloud platforms.

## 📌 Project Details
To **test and apply cloud networking concepts**, I set up a **site-to-site VPN** between AWS and Azure, enabling secure cross-cloud database communication. The project involved:

- **Configuring VPN connectivity** between AWS and Azure
- **Integrating private networking** (Azure Private Endpoint, AWS RDS subnet groups)
- **Deploying phpMyAdmin in a container** on Azure App Service for database access

## 🛠️ Technologies Used
- **AWS:** RDS MySQL, VPN Gateway, Subnet Groups, Security Groups
- **Azure:** MySQL Database, App Service, Private Endpoint, Virtual Network Gateway
- **Networking:** Site-to-Site VPN, VNET Integration, Routing
- **Containerization:** Dockerized phpMyAdmin on Azure App Service

## 🔍 Key Learnings
- Establishing **secure cloud-to-cloud communication** using Site-to-Site VPNs
- Configuring **private networking** for managed database services
- Deploying **containerized applications** on Azure App Service

## ⚠️ Decommissioning
💡 *Since this was a lab project, all resources have been decommissioned.*

## 📝 Purpose & Scope
This project was for educational purposes only.

---

## 🖼️ Network Architecture Diagram
![Network Architecture](Azure_AWS_Cross-Cloud_Database_Integration_Network_Drawing.png)

---

## 🚀 Azure Infrastructure
### Azure App Service & Container
- **App Service running phpMyAdmin**
- Connected to **Azure MySQL** via **Private Endpoint**  
- Connected to **AWS RDS MySQL** via **VPN** (172.31.251.236)

![App Service](project_screenshots/Phpmyadmin_AppService.png)
![App Service Container](project_screenshots/AppService_Container.png)

### Azure Virtual Network (VNet)
- Contains subnets for App Service, Private Endpoint, and VPN Gateway  
- CIDR: *(shown in the screenshot below)*

![Azure Virtual Network](project_screenshots/Virtual_Network.png)

### Azure VPN Gateway & Connection
- **VPN Tunnel** to AWS (*Status: Connected*)  
- Allows secure traffic between **Azure and AWS VPC**

![Azure VPN Connection](project_screenshots/Azure_Vpn_Connection.png)

### Azure MySQL Database
- **Private Endpoint created** for secure internal access
- **Metrics Monitoring** for database performance

![Azure MySQL Private Endpoint](project_screenshots/Azure_Mysql_Private-endpoint_Nic.png)
![Azure MySQL Metrics](project_screenshots/Azure_Mysql_Metrics.png)

---

## ☁️ AWS Infrastructure
### AWS VPN & RDS Configuration
- **AWS Virtual Private Gateway (VGW)** connects to Azure
- **AWS RDS MySQL** deployed in a **private subnet group**
- **Elastic Network Interface (ENI)** for the RDS instance

![AWS VPN Connection](project_screenshots/Aws_Vpn_Connection.png)
![RDS Subnet Group](project_screenshots/Rds_SubnetGroup.png)
![RDS ENI & Private IP](project_screenshots/Rds_Eni_Ip.png)

### AWS RDS MySQL Database
- Database instance and name visible in RDS console

![AWS RDS Database Name](project_screenshots/Rds_Db_Name.png)

---

## 🖥️ phpMyAdmin Setup
### phpMyAdmin Login & Connection
- phpMyAdmin deployed as a **containerized app** in Azure
- Provides access to **both databases** (AWS RDS & Azure MySQL)

![phpMyAdmin Login Page](project_screenshots/Phpmyadmin_Login_Page.png)
![phpMyAdmin Connected to Azure MySQL](project_screenshots/Phpmyadmin_Azure_Mysql.png)
![phpMyAdmin Connected to AWS RDS](project_screenshots/Phpmyadmin_Rds_Mysql.png)

---

## 📸 Screenshots
*(All screenshots are stored in this repository in the project_screenshots directory.)*

---

## 📂 Project Files

This repository contains resources used to test the **phpMyAdmin container** in a cross-cloud setup between **AWS** and **Azure**. Below are the key files included:

- **Dockerfile** - Used to build and run the **phpMyAdmin** container with the necessary configurations.
- **README.md** - Project documentation, including architecture details and setup instructions.
- **Screenshots** - Various images showcasing the **VPN setup, database connections, and infrastructure** across both cloud providers.

---

**Project completed! ✅**
