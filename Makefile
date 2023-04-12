# ┌─────────────────────────────────────────────────────────────────────────────┐
# │ Colors definitions                                                          │
# └─────────────────────────────────────────────────────────────────────────────┘
CR=\033[0;31m
CG=\033[0;32m
CY=\033[0;33m
CB=\033[0;36m
RC=\033[0m

# ┌─────────────────────────────────────────────────────────────────────────────┐
# │ Commands                                                                    │
# └─────────────────────────────────────────────────────────────────────────────┘
.PHONY: build
build:
	@docker rm mont-dashboard 2>/dev/null || true
	@docker rmi mont-dashboard_image 2>/dev/null || true
	@docker build . -t mont-dashboard_image
	@docker create --name mont-dashboard -p 3001:3000 mont-dashboard_image

.PHONY: stop
stop:
	@docker stop mont-dashboard

.PHONY: sh
sh:
	@docker exec -it mont-dashboard sh

.PHONY: start
start:
	@docker start mont-dashboard

# ┌─────────────────────────────────────────────────────────────────────────────┐
# │ Help                                                                        │
# └─────────────────────────────────────────────────────────────────────────────┘
help:
	@echo ""
	@echo -e "${CY}Usage:${RC}"
	@echo -e "   make ${CG}<command>${RC}"
	@echo  ""
	@echo -e "${CY}Infra commands:${RC}"
	@echo -e "${CG}   build               ${RC}Build all containers"
	@echo -e "${CG}   start               ${RC}Start all containers"
	@echo -e "${CG}   stop                ${RC}Stop all containers"
	@echo -e "${CG}   sh                  ${RC}Enter inside a container"
	@echo  ""