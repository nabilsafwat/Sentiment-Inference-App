FROM python:3.9-slim

# Install dependencies
RUN pip install torch transformers fastapi uvicorn Jinja2

# Install Nginx
RUN apt-get update && apt-get install -y nginx

# Remove the default Nginx configuration
RUN rm /etc/nginx/sites-enabled/default

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/sites-enabled/

# Copy the FastAPI application code
COPY app.py /app/

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx and run the FastAPI application with uvicorn
CMD ["nginx", "-g", "daemon off;"]
