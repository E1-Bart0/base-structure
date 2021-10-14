FROM python:3.10

# Create project directory
WORKDIR /app

# Import args from docker-compose
ARG POETRY_VERSION
ARG ENV

# Install poetry
RUN pip install -U pip && \
    pip install "poetry==$POETRY_VERSION" && \
    poetry config virtualenvs.create false

# Copy only requirements to cache them in docker layer
COPY poetry.lock pyproject.toml /app/
RUN poetry install $(test "$ENV" = "prod" && echo "--no-dev") --no-interaction --no-ansi

# Creating folders, and files for a project:
COPY ./src /app
