# Inception 42 Project

## Overview
The Inception 42 project is a comprehensive infrastructure and application deployment challenge designed for 42 students. This project focuses on the setup and configuration of various services using Docker and Docker Compose, aimed at building a reliable, scalable, and secure environment. The project emphasizes practical knowledge of containerization, web application deployment, and cloud infrastructure management.

## Objectives
- **Set up a multi-container application** using Docker and Docker Compose.
- **Configure a web server** (e.g., Nginx) to serve multiple applications.
- **Set up a database service** (e.g., MySQL or PostgreSQL) and link it with the web application.
- **Create a secure environment** with SSL certificates and proper security configurations.
- **Implement a monitoring system** using tools like Prometheus and Grafana.
- **Deploy the services in a highly available and fault-tolerant manner**.

## Services Included
- **Nginx**: Acts as the reverse proxy to handle incoming requests.
- **Database**: MySQL or PostgreSQL database service for persistent data storage.
- **App Service**: A web application (e.g., a Flask/Django app) deployed in a container.
- **Monitoring**: Prometheus for monitoring and Grafana for dashboards.

## Prerequisites
Before starting, ensure you have the following installed:
- Docker
- Docker Compose

## Setup Instructions

1. **Clone the repository**:
   ```bash
   git clone https://github.com/3bduu/inception.git
   cd inception42
2. **Build the Docker images**:
   ```bash
   docker-compose build
   
4. **Start the services**:
   ```bash
   docker-compose up -d
6. **Access the application**: Open your browser and navigate to:
   ```bash
   https://localhost:8080
