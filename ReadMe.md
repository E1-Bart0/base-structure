# It's a base structure for my all projects
![Actions Status](https://github.com/E1-Bart0/base-structure/actions/workflows/tests.yml/badge.svg)

To start using this, _poetry_ should be installed

```
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
```

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
