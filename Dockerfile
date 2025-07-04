FROM python:3.13.5-alpine3.22

# Set working directory
WORKDIR /app

# Copy requirements if exists, then install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Expose port (change if your app uses a different port)
EXPOSE 8000

# Run the application
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]

# docker build -t imersao .
# docker run -p 8000:8000 imersao