.PHONY: venv
venv:
	@echo "Creating virtual environment..."
	@python3 -m venv venv
	@echo "Activating virtual environment..."
	@. venv/bin/activate
	# source venv/bin/activate



.PHONY: install
install:
	@echo "Installing dependencies..."
	@pip install --upgrade pip
	@pip install -r requirements.txt


.PHONY: freeze
freeze:
	@echo "Freezing dependencies..."
	@pip freeze > requirements.txt


.PHONY: run
run:
	@echo "Running application..."
	python main.py


.PHONY: test
test:
	@echo "Running tests..."
	pytest -v tests