install:
	pip install --upgrade pip &&\
		pip install --no-cache-dir -r requirements.txt

test:
	#python -m pytest -vvv --cov=hello --cov=greeting \
		--cov=smath --cov=web tests

debug:
	python -m pytest -vv --pdb	#Debugger is invoked

format:
	black *.py

lint:
	pylint --disable=R,C *.py

all: install lint test format