# Instantiate from existing image.
FROM python:3.7.3-stretch

# Create working directory.
WORKDIR /app

# Copy source code to working directory. 
COPY . app.py /app/

# Install dependencies
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
	pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 80
EXPOSE 80

# Run application at container launch
CMD ["python", "app.py"]
