.PHONY: setup install format lint test clean

# Install dependencies using Poetry
install:
	poetry install

# Format code using Black and Ruff
format:
	poetry run ruff check --fix .
	poetry run black .

# Lint code using Ruff and Black (check only, no modifications)
lint:
	poetry run ruff check .
	poetry run black --check .

# Run unit tests
test:
	poetry run pytest tests/

# Clean cached files and build artifacts
clean:
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type d -name ".pytest_cache" -exec rm -rf {} +
	find . -type d -name ".ruff_cache" -exec rm -rf {} +
	find . -type d -name ".ipynb_checkpoints" -exec rm -rf {} +
