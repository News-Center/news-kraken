SHELL := /bin/bash

.DEFAULT_GOAL := help
.PHONY: help
help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

up: ## Run a local development environment with Docker Compose.
	@docker compose up --build --force-recreate

down: ## Stop the Docker Compose local development environment.
	@docker compose down --remove-orphans --volumes

db: ## Start the User and News database.
	@docker compose up postgres_user_api postgres_news_api --build --force-recreate	
