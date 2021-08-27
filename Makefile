## The Makefile includes instructions on environment setup and lint tests.

setup:
	# Create python virtualenv & source it
	# source venv/bin/activate
	python3 -m venv ~/.devops

install:
	# This should be run from inside a virtualenv
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
    	chmod +x /bin/hadolint &&\
	pip install --upgrade pip &&\
		pip install -r requirements.txt
test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 app.py

all: install lint test
