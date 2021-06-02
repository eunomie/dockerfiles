.DEFAULT_GOAL := help

ifndef DOCKER_NAMESPACE
DOCKER_NAMESPACE=eunomie
endif

ifndef DOCKER_TAG
DOCKER_TAG=dev
endif

##@ Build docker images

build: ## Build all Docker images
	@( \
	shopt -u dotglob; \
	find * -prune -type d | while IFS= read -r d; do \
		$(MAKE) build/$$d; \
	done \
	)

build/%: ## Build Docker image for the defined sub directory. Usage: make build/<folder>
	docker buildx build \
		-t $(DOCKER_NAMESPACE)/$(@F):$(DOCKER_TAG) \
		--build-arg GIT_REF=$(shell git rev-parse --verify HEAD) \
		$(@F)

.PHONY: help
help:
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[a-zA-Z_\/%-]+:.*?##/ { printf "  \033[36m%-27s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
