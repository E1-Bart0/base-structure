install_linters:
	poetry install
	poetry run pre-commit install
	poetry run pre-commit install --hook-type commit-msg
	poetry run pre-commit autoupdate

lint:
	poetry run black alias
	poetry run isort alias
	poetry run flake8 alias
