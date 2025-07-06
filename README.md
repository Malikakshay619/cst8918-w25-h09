```markdown
# CST8918 - DevOps: Infrastructure as Code
## Hybrid-H09: Azure Kubernetes Service (AKS) Cluster with Terraform
```
### 👨‍💻 Course Details
- **Course**: CST8918 - DevOps: Infrastructure as Code
- **Professor**: Robert McKenney
- **Assignment**: Hybrid-H09 - AKS Cluster with Terraform
- **Student**: Akshay

---

## 🚀 Overview

This project provisions an **Azure Kubernetes Service (AKS)** cluster using **Terraform** and deploys a **multi-tier sample application** that includes:

- 📦 **Frontend**: Vue.js
- ⚙️ **Backend Services**: Node.js & Rust
- 📡 **Message Broker**: RabbitMQ

---

## 🛠️ Project Structure

```

cst8918-w25-h09/
├── main.tf              # Terraform configuration for AKS
├── provider.tf          # Azure provider configuration
├── variables.tf         # Variables for AKS cluster
├── outputs.tf           # Output kubeconfig for kubectl
├── sample-app.yaml      # Kubernetes manifest for multi-tier app
├── README.md            # Project documentation

````

---

## ⚙️ Requirements

- Terraform >= 1.5.0
- Azure CLI
- kubectl
- An active Azure account

---

## 🌱 Deployment Steps

### 1️⃣ Provision AKS Cluster

```bash
terraform init
terraform apply
````

This will:
✅ Create a new Azure resource group
✅ Deploy an AKS cluster (1–3 nodes, Standard\_B2s)
✅ Output the kubeconfig for the cluster

---

### 2️⃣ Connect to the Cluster

```bash
echo "$(terraform output kube_config)" > kubeconfig
export KUBECONFIG=./kubeconfig
kubectl get nodes
```

✅ You should see AKS nodes in `Ready` state.

---

### 3️⃣ Deploy the Sample App

```bash
kubectl apply -f sample-app.yaml
```

---

### 4️⃣ Verify Deployment

```bash
kubectl get pods
kubectl get services
```

✅ All pods should be `Running`.
🌐 Access the app using the `EXTERNAL-IP` of the `store-front` service.

---

## 🧹 Clean Up Resources

```bash
kubectl delete -f sample-app.yaml
terraform destroy
```

This will remove all Azure resources to avoid additional charges.

---

## 👨‍🎓 Author

Akshay
CST8918 - DevOps: Infrastructure as Code
Professor Robert McKenney

````
