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


.PHONY: run
run:
	@echo "Running application..."
	python app.py