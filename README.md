# 🚀 DevOps Project: CI/CD with Jenkins, Docker, and Ansible

## 📦 Project Structure

project-devops/
├── Jenkinsfile
├── docker/
│ └── Dockerfile
├── ansible/
│ ├── hosts
│ ├── playbook.yml
│ └── roles/
│ └── webserver/
│ ├── tasks/
│ │ └── main.yml
│ └── templates/
│ └── nginx.conf.j2
├── scripts/
│ └── setup.sh
├── app/
│ └── index.html
└── README.md



## ⚙️ Technologies Used
- **Jenkins** – CI/CD automation
- **Docker** – Containerization
- **Ansible** – Configuration management
- **Nginx** – Web server

## 🔧 Setup Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/project-devops.git

Run the setup script

bash
Copy
Edit
cd project-devops/scripts
bash setup.sh

Run the CI/CD Pipeline

Push code to GitHub

Jenkins auto-triggers the pipeline

Docker builds and deploys

Ansible configures the remote server

Access the Website

Visit: http://your-server-ip:PORT

📂  Key Components

Jenkinsfile: Automates Docker build, push, and Ansible deployment.

Dockerfile: Defines image for static site.

playbook.yml: Automates Nginx setup and HTML file deployment.

nginx.conf.j2: Template for Nginx with custom port.

index.html: The static website served.

setup.sh: Prepares environment and dependencies.

🧑‍💻 Author
Anup Jadhav
🔗 GitHub: Anupj11