# 🌐 Terraform – Static Website Hosting on AWS S3

This project demonstrates how to deploy a **serverless static website** on **Amazon S3** using **Terraform**.  
The entire infrastructure — S3 bucket, permissions, website hosting configuration, and HTML object uploads — is fully automated using Infrastructure as Code (IaC).

---

## 🚀 Project Overview

This project uses **Terraform on Ubuntu (WSL)** with **VS Code** to deploy a static HTML website to an AWS S3 bucket.  
The deployment is **fully automated, repeatable, and version-controlled**.

---

## 🛠 Tech Stack

- **Terraform** (Infrastructure as Code)
- **AWS S3**
- **Ubuntu on WSL**
- **VS Code**
- **HTML/CSS static website**

---

## 📁 Project Structure

```
terraform-project/
│── provider.tf             # AWS provider configuration
│── variables.tf            # Input variables (bucket name)
│── main.tf                 # S3 resources + website configuration
│── outputs.tf              # S3 website endpoint output
│── index.html              # Main website page
│── error.html              # Custom error page
│── .gitignore              # Ignore Terraform local files
```

---

## 🧱 AWS Resources Created by Terraform

### ✔ S3 Bucket  
Stores website files and supports static hosting.

### ✔ Ownership Controls  
Ensures correct object ownership settings.

### ✔ Public Access Block  
Manages public access settings required for hosting.

### ✔ S3 Bucket ACL  
Enables public-read for static hosting.

### ✔ S3 Objects  
Uploads:
- `index.html`
- `error.html`  
with correct `content-type`.

### ✔ Website Hosting Configuration  
Defines:
- **Index document:** `index.html`
- **Error document:** `error.html`

### ✔ Output  
Prints the final S3 website endpoint after deployment.

---

## ⚙️ Deployment Steps

### **1. Initialize Terraform**
```bash
terraform init
```

### **2. Validate**
```bash
terraform validate
```

### **3. Preview**
```bash
terraform plan
```

### **4. Deploy**
```bash
terraform apply -auto-approve
```

### **5. Get Website URL**
Terraform outputs:

```
http://my-s3-bucket-23-11-2025.s3-website.ap-south-1.amazonaws.com/#about
```

Open this URL to access your live website.

<img width="1918" height="972" alt="image" src="https://github.com/user-attachments/assets/97805c3a-b069-4d8c-b942-f4f489cefeaa" />


---

## 🌐 Website Pages

### **index.html**
- Modern animated landing page  
- Uses free images from Unsplash  
- Responsive layout  

### **error.html**
- Custom 404 error page  
- Animated design  

---

## 🔒 .gitignore (Important)

This repository ignores:

```
.terraform/
*.tfstate
*.tfstate.backup
.terraform.lock.hcl
```

Prevents large files (700MB+) from being pushed to GitHub.

---

## 🎯 Learning Outcomes

- AWS S3 static website hosting  
- Terraform IaC workflow  
- S3 bucket configuration, ACLs, and access control  
- Git & GitHub project organization  
- Linux (WSL) development workflow  

---

## 📬 Author

**Vishvapranav M**  
Terraform | AWS | DevOps | Java | SQL  
GitHub: https://github.com/Vishvapranav28
