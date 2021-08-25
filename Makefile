## The Makefile includes instructions on environment setup and lint tests.

setup:
	# Create python virtualenv.
	python3 -m venv venv

install:
	# Install dependencies detailed in `requirements.txt`.
	# To be run from within a virtualenv.
	sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
    	sudo chmod +x /bin/hadolint &&\
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	# Basic unit tests.
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# Lint Dockerfile.
	hadolint Dockerfile
	# To be run from within a virtualenv.
	pylint --disable=R,C,W1203,W1309 app.py

all: install lint test