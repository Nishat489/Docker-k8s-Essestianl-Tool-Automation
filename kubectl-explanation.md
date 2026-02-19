# 📥 Installing kubectl – Script Explanation

---

## 📜 Script

```bash
#!/bin/bash
```

### ✅ What this means

This tells Linux:

👉 “Run this script using the bash shell.”

It is called a **shebang**.

The shebang defines which interpreter executes the script.

---

```bash
curl -LO https://dl.k8s.io/release/v1.32.0/bin/linux/amd64/kubectl
```

## ✅ What this does

This line:

- Downloads the `kubectl` binary
- Saves it in the current directory

---

### 🔍 Break it down

#### curl
Used to download files from the internet.

#### -L
Follows redirects automatically.

#### -O
Saves the file with its original name (`kubectl`).

---

After this step:

👉 The `kubectl` binary exists in your current folder.

---

```bash
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
```

## ✅ What this does

This verifies the integrity of the downloaded file.

---

### 🔍 Why verification is important?

When downloading binaries:

- The file could be corrupted
- The file could be tampered with

The SHA256 check ensures:

✔ The file is authentic  
✔ The file is not modified  
✔ The download is complete  

---

### ⚠ Important Note

For this command to work, you must also download:

```
kubectl.sha256
```

From:

```
https://dl.k8s.io/release/v1.32.0/bin/linux/amd64/kubectl.sha256
```

---

If verification succeeds, you will see:

```
kubectl: OK
```

---

```bash
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

## ✅ What this does

Installs the kubectl binary into the system path.

---

### 🔍 Break it down

#### sudo
Required because `/usr/local/bin` needs root permissions.

#### install
Used to copy and set permissions in one step.

#### -o root
Sets file owner to root.

#### -g root
Sets group owner to root.

#### -m 0755
Sets file permissions:
- Owner → Read, Write, Execute
- Group → Read, Execute
- Others → Read, Execute

#### /usr/local/bin/kubectl
Final destination path.

---

### 📌 Why move to `/usr/local/bin`?

Because `/usr/local/bin` is in your system **PATH**.

That means you can run:

```bash
kubectl
```

From anywhere in the terminal.

---

```bash
kubectl version --client
```

## ✅ What this does

Checks whether kubectl is installed properly.

You will see output like:

```
Client Version: v1.32.0
```

---

## 🎯 What This Confirms

- kubectl installed successfully  
- Binary permissions are correct  
- PATH is configured properly  
- You can interact with Kubernetes clusters  

---

# 📌 What is kubectl?

## 🔹 kubectl = Kubernetes Command Line Tool

It is the official CLI tool to interact with a Kubernetes cluster.

---

## 🔹 What does kubectl do?

You use it to:

- Create pods
- Deploy applications
- Check logs
- View services
- Debug issues
- Manage namespaces
- Scale deployments
- Apply YAML files

Example:

```bash
kubectl get pods
kubectl apply -f deployment.yaml
kubectl describe node
```

---

## 🎯 Interview Perspective

If asked:

### ❓ What is kubectl?

You can say:

> kubectl is the official Kubernetes CLI used to communicate with the Kubernetes API server. It allows us to deploy applications, manage cluster resources, troubleshoot issues, and automate operations using YAML manifests.

---

## 📌 Final Understanding

This script:

1. Downloads kubectl
2. Verifies its integrity
3. Installs it into system PATH
4. Validates installation

Simple. Secure. Production-ready method.
