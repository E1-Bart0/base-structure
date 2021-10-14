# It's a base structure for my all projects

To start using this, _poetry_ should be installed

**Install dependencies:**
```
poetry install
```

## Main dependencies

**Linters and code formatters that using here:**
- Flake8 with some plugins:
- Pep8-naming
- Isort
- MyPy

**For tests using:**
- Pytest

**To start using pre-commit:**
```
make install_pre_commit
```

**To use docker Do not forget cope _.env.template_**
```
cp .env.template .env
docker-compose up -d
```
