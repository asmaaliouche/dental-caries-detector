# Data Science & MLOps Standards

This document outlines the strict engineering standards for all Machine Learning and Data Science repositories. It ensures reproducibility, scalability, and robust engineering practices.

## 1. Code Organization: Notebooks vs. Scripts
* **Notebooks (`.ipynb`)**: STRICTLY restricted to Exploratory Data Analysis (EDA), visualizing results, and generating reports. 
* **Scripts (`.py`)**: All core logic, data transformations, model definitions, preprocessing, and training pipelines MUST reside in Python modules.
* **Rule**: If a function is used more than once or performs a core data manipulation, it belongs in a reusable `.py` script, which can then be imported into a notebook.

## 2. Logging vs. Printing
* **NO `print()` Statements**: Never use `print()` in either scripts or notebooks.
* **Use `logging`**: Always use the built-in Python `logging` module. Configure appropriate log levels (`DEBUG`, `INFO`, `WARNING`, `ERROR`, `CRITICAL`). This guarantees that outputs can be tracked systematically in MLOps pipelines and cloud environments.

## 3. Language & Naming Conventions
* **Strictly English Only**: All code, variables, functions, docstrings, markdown cells, commit messages, and comments must be 100% in English. Do not mix languages.
* Use explicit, descriptive, and clinically/technically accurate variable names (e.g., `apply_clahe_preprocessing()` rather than `do_img_stuff()`).

## 4. Documentation & Type Hinting
* **Docstrings**: Every function and class must have a comprehensive docstring (Google or NumPy style) explaining the purpose, parameters, and return types.
* **Type Hints**: Strict usage of Python type hinting (e.g., `def load_image(file_path: Path) -> np.ndarray:`) is mandatory for all functions to ensure predictable I/O and easier debugging.

## 5. Environment Management (Poetry)
* **Poetry**: We strictly use [Poetry](https://python-poetry.org/) for dependency management and packaging. Avoid raw `requirements.txt` or `pip freeze` dumps.
* **Lock Files**: Always commit the `poetry.lock` file to guarantee deterministic builds across environments.

## 6. Automation & Formatting (Makefile & Linters)
* **Makefile**: Use a `Makefile` at the root of the project to encapsulate common developer tasks (e.g., `make install`, `make test`, `make lint`).
* **Linting & Formatting**: Code must be automatically formatted and linted. We use **Black** for formatting and **Ruff** for linting. 
* **Pre-commit Hooks**: These checks (along with others like trailing whitespace or large file checks) should be enforced via pre-commit hooks or run automatically via the Makefile before every commit.

## 7. Configuration & Hardcoding (No Magic Numbers)
* **No Hardcoded Values**: Hyperparameters, model configurations, and API keys must be extracted into configuration files (`config.yaml`, `.env`) or managed via tools like `Hydra` or `Pydantic`.
* **Path Management**: NEVER use string concatenation for paths. Always use `pathlib.Path` for cross-platform compatibility.

## 8. Reproducibility & Data Integrity
* **Random Seeds**: Always set and log random seeds for all libraries (NumPy, PyTorch, TensorFlow, Random) at the start of any pipeline.
* **Immutable Raw Data**: Treat raw data as read-only. Scripts should read from a `data/raw/` directory and write outputs to `data/processed/`. Never overwrite raw clinical files.

## 9. Testing
* Core processing functions (especially data loaders, custom metrics, or clinical image transformations) must be validated with unit tests (e.g., using `pytest`).