# Sentiment-Inference-App

This repository contains code for an app using Docker containers, fine-tuned Distillbert model, Nginx and a simple User Interface that posts requests to an inference pipeline for sentiment analysis. 

1. Cloning the Repository

To clone the repository, run the following command:

```bash
git clone https://github.com/nabilsafwat/Sentiment-Inference-App.git

2. Running Docker
Ensure you have Docker installed on your machine. To run the app using Docker, navigate to the cloned repository and build the Docker image:

```bash
cd Sentiment-Inference-App
docker build -t sentiment-inference-app .

Once the image is built, you can run the Docker container:

```bash
docker run -d -p 8000:8000 sentiment-inference-app
