# Makefile para Mi Juego Multiplayer

# ----------------------------------------------------------------------
# COLORES (Opcional, para que se vea bonito en la terminal)
# ----------------------------------------------------------------------
GREEN  := $(shell tput -Txterm setaf 2)
WHITE  := $(shell tput -Txterm setaf 7)
RESET  := $(shell tput -Txterm sgr0)

# ----------------------------------------------------------------------
# REGLAS PRINCIPALES
# ----------------------------------------------------------------------

.PHONY: all install build start clean dev help

# Por defecto, si escribes solo 'make', muestra la ayuda
all: help

## help: Muestra esta ayuda
help:
	@echo ''
	@echo 'Uso del Makefile:'
	@echo '  ${GREEN}make install${RESET}  -> Instala las dependencias en client y server'
	@echo '  ${GREEN}make build${RESET}    -> Compila el proyecto (client y server) para producción'
	@echo '  ${GREEN}make start${RESET}    -> Ejecuta el servidor de producción (requiere make build)'
	@echo '  ${GREEN}make clean${RESET}    -> Borra node_modules y carpetas dist'
	@echo ''

## install: Instala dependencias en ambas carpetas
install:
	@echo '${GREEN}Installing Client dependencies...${RESET}'
	cd client && npm install
	@echo '${GREEN}Installing Server dependencies...${RESET}'
	cd server && npm install
	@echo '${GREEN}Done!${RESET}'

## build: Construye el código TypeScript a JavaScript (dist)
build:
	@echo '${GREEN}Building Client...${RESET}'
	cd client && npm run build
	@echo '${GREEN}Building Server...${RESET}'
	cd server && npm run build
	@echo '${GREEN}Build Complete! Ready to start.${RESET}'

## start: Inicia el juego en modo producción
start:
	@echo '${GREEN}Starting Game Server (Production)...${RESET}'
	@echo 'Open http://localhost:3000 in your browser'
	cd server && npm start

## clean: Limpia el proyecto (borra node_modules y dist)
clean:
	@echo '${GREEN}Cleaning project...${RESET}'
	rm -rf client/node_modules client/dist
	rm -rf server/node_modules server/dist
	@echo '${GREEN}Cleaned.${RESET}'