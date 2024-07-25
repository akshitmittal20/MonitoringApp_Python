# MonitoringApp_Python

This repository contains the source code for the MonitoringApp_Python, a system monitoring application built with Python, Flask, and Docker. This application provides a web interface to monitor CPU and memory usage.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Setup Instructions](#setup-instructions)
- [Running the Application](#running-the-application)
- [Creating Docker Image and Container](#creating-docker-image-and-container)
- [Deploying on Google Cloud Platform](#deploying-on-google-cloud-platform)
- [Incrementing Git Tag](#incrementing-git-tag)
- [Folder Structure](#folder-structure)

## Prerequisites
- Python 3.9 or later
- Docker
- Git
- Google Cloud Platform account
- SSH key setup for GitHub

## Setup Instructions

1. **SSH Connection to GitHub**:
   - Ensure you have created an SSH connection from GitHub to your local system. Follow GitHub's guide [here](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh) if needed.

2. **Clone the Repository**:
   ```bash
   git clone git@github.com:yourusername/MonitoringApp_Python.git
   cd MonitoringApp_Python
   ```

3. **Create and Install Requirements**:
   - Create a `requirements.txt` file with the necessary dependencies.
   - Install the requirements:
     ```bash
     pip install -r requirements.txt
     ```

4. **Create Frontend HTML Template**:
   - Create the `index.html` file in the `templates` folder.

5. **Create the app.py File**:
   - Develop the `app.py` file which includes the Flask application code.

## Running the Application

To run the application locally:
```bash
python app.py
```
The application should be accessible at `http://localhost:5000`.

## Creating Docker Image and Container

1. **Create Dockerfile**:
   - Create a `Dockerfile` with the necessary instructions to build the image.

2. **Build Docker Image**:
   ```bash
   docker build -t monitoringapp_python .
   ```

3. **Run Docker Container**:
   ```bash
   docker run -p 5000:5000 monitoringapp_python
   ```
Test the container by accessing `http://localhost:5000`.

## Deploying on Google Cloud Platform

1. **Create a Service Account**:
   - Create a service account in GCP and set up the necessary AMI IDs.

2. **Set Up GitHub Actions for CI/CD**:
   - Create a `.github/workflows/gcp.yml` file for the Docker build and push workflow.

3. **Push Docker Image to Google Artifact Registry**:
   - Use the GitHub Actions workflow to automate the process.

## Incrementing Git Tag

1. **Create the `git_update.sh` Script**:
   - This script increments the git tag for each commit and uses it for the Docker image versioning.

2. **Run the Script**:
   ```bash
   ./scripts/git_update.sh -v [major|minor|patch]
   ```

## Folder Structure

```
MonitoringApp_Python/
├── .github/
│   └── workflows/
│       └── gcp.yml
├── scripts/
│   └── git_update.sh
├── templates/
│   └── index.html
├── Dockerfile
├── app.py
├── requirements.txt
└── README.md
```

## License
This project is licensed under the MIT License. See the LICENSE file for details.


- Created a ssh connection form github to your local system
- Clone the empty repository for the application
- Create the Requirements.txt file
- Install all the Requirements file
- Create the frontend html template file.
- Create the app.py file.
- Run the application on the localhost via given port
- After succesfull running the app, create the docker file to create for the image of application
- Run the docker image to create the container. Test the container by running the application
- Now, Create the service account in GCP and set up AMI ids
- Create Github Actions Docker build and Push workflow for deploying the application on the Google Container Repository
- Use github action to push docker to Google Artifact Registry
- Increment git tag for each commit and use it for docker image.


# Development Completed
- System Monitoring web App
  
<img width="1265" alt="image" src="https://github.com/akshitmittal20/MonitoringApp_Python/assets/63283989/b7c0bbd7-ae13-4615-a720-648588d060c3">

- Workflow in Github Action
  
<img width="1268" alt="image" src="https://github.com/akshitmittal20/MonitoringApp_Python/assets/63283989/33e1da45-8479-4b15-8e7e-850d896be876">

- Google Container Registery
  
<img width="1224" alt="image" src="https://github.com/akshitmittal20/MonitoringApp_Python/assets/63283989/aa50cac4-be79-448f-8790-d86c578da874">

- Google Artifact Repository
  
<img width="1228" alt="image" src="https://github.com/akshitmittal20/MonitoringApp_Python/assets/63283989/fa263c19-8266-43f7-8cdd-8cd98e4fe317">

---
```



