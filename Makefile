setup:
	python3 -m venv ~/.Containerization/bin/activate

env:
	#Show information about environment
	which python3
	python3 --version
	which pytest
	which pylint

lint:
	pylint --load-plugins pylint_flask --disable=R,C flask_app/*.py nlib csvcli

install:
	pip install -r requirements.txt 

all: install lint test