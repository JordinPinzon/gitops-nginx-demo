# Demo Aplication with GitOps and Ngix

This project is a demonstration of deploying applications using GitOps and NGINX as the web server. GitOps is a methodology for deploying and managing infrastructure and applications where the entire application lifecycle is handled through a Git repository. Changes in the repository are automatically reflected in the production environment using tools like ArgoCD.

In this case, we've implemented a simple "Hello World" application in HTML, using NGINX as the web server, and managed with the GitOps methodology.

Requirements
Before running the application, make sure you have the following requirements:

Docker installed on your machine.
kubectl configured to interact with a Kubernetes cluster.
ArgoCD installed and configured in your Kubernetes cluster to manage automatic resource synchronization.

# Installation and Running

## Option 1: Run Locally

1. Clone this repository to your local machine:

git clone https://github.com/JordinPinzon/gitops-nginx-demo.git
cd gitops-nginx-demo

2. Build the Docker image:

docker build -t jordin13/hola-mundo .

3.  Run the Docker container locally:

docker run -d -p 8080:80 jordin13/hola-mundo

Now, you can access the application at http://localhost:8080 in your browser.

## Option 2: Download the Image from Docker Hub
If you prefer not to build the image yourself, you can pull the prebuilt image directly from Docker Hub:

1. Pull the image from Docker Hub:

docker pull jordin13/hola-mundo

2. Run the Docker container locally:

Run the Docker container locally:   

docker run -d -p 8080:80 jordin13/hola-mundo

Now, you can access the application at http://localhost:8080 in your browser.

## View of the application successfully deployed with Kubernetes on Argo CD

![Captura de pantalla 2024-12-14 225123](https://github.com/user-attachments/assets/09a87be7-757a-4b1e-a81d-6247f6443a70)

![Construccion de argocd](https://github.com/user-attachments/assets/d4fd9aa0-3a5a-417c-8f9e-465e0d07328d)



Important Files
- index.html: The HTML file that displays the message "Hello World from Docker!".
- Dockerfile: The file used to build the Docker image that runs the application.
- manifests/: Directory containing the Kubernetes configuration files:
- namespace.yml: Defines the Kubernetes namespace for the application.
- deployment.yml: Defines the deployment of the application using the Docker container.
- service.yml: Defines the Kubernetes service to expose the application.

Contributing
If you wish to contribute to this project, follow these steps:

1. Fork the repository.
2. Make your changes.
3. Open a Pull Request with a detailed description of the changes made.




