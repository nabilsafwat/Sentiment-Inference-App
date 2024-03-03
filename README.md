# Sentiment-Inference-App

This repository contains code for an app using Docker containers, fine-tuned Distillbert model, Nginx and a simple User Interface that posts requests to an inference pipeline for sentiment analysis. I used the Ubuntu Desktop App for this project. 

## Usage

1. Cloning the repo:

   To clone the repository, run the following command:
   ```bash
   git clone https://github.com/nabilsafwat/Sentiment-Inference-App.git

3. Running Docker
   Ensure you have Docker installed and running on your machine. Use the Docker CLI to manage the Docker container. To run the app using Docker, navigate to the cloned repository and build the Docker image:
   ```bash
   cd Sentiment-Inference-App
   docker build -t sentiment-inference-app .

4. Once the image is built, you can run the Docker container:
   ```bash
   docker run -d -p 8000:8000 sentiment-inference-app

5. Next, start Uvicorn ASGI server with the FastApi application:
   ```bash
   uvicorn app:app --reload

6. Once completed, the simple UI is now available at: 'http://localhost:8000'
   This can be accessed from the web-browser.

Note: By default, the pipeline uses the 'DistilBert' model, which I wanted to use for this project. DistilBert is a 'distilled' version of the BERT model that shows performance similar to BERT however is significantly smaller in size.  It has 40% less parameters than BERT and makes it more memory efficient for projects running on local machine, while still providing good performance such as BERT on binary classification tasks. 
