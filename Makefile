install_pre_commit:
	poetry run pre-commit install
	poetry run pre-commit install --hook-type commit-msg
	poetry run pre-commit autoupdate

lint:
	poetry run black .
	poetry run isort .
	poetry run flake8 .
	poetry run mypy .
