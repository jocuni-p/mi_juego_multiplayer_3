# 🏓 Multiplayer Game - Como paso previo al Pong de Transcendence

**NOTA IMPORTANTE: Todo el codigo lo he desarrollado con la IA para que podamos entender, de forma algo mas sencilla, que puede representar hacer el Transcendence.**

Un juego multijugador en tiempo real desarrollado con **Node.js (Fastify)**, **WebSockets**, **Vite** y **TypeScript**.

## Requisitos

* **Node.js** (v18 o superior recomendado)
* **npm**
* **Make** (normalmente preinstalado en Mac/Linux)

---

## Cómo ejecutarlo (Modo Facil)

Este proyecto incluye un `Makefile` para automatizar todo el proceso. Solo necesitas abrir una terminal en la raíz del proyecto y seguir estos pasos:

### 1. Instalar dependencias
Descarga las librerías necesarias tanto para el cliente como para el servidor.
```bash
make install
````

### 2\. Compilar el proyecto

Traduce el código TypeScript a JavaScript optimizado para producción (crea las carpetas `dist`).

```bash
make build
```

### 3\. Iniciar el juego

Arranca el servidor.

```bash
make start
```

**Ahora abre tu navegador en:** [http://localhost:3000](https://www.google.com/search?q=http://localhost:3000)

> **Tip:** Abre la misma URL en una segunda pestaña (o ventana de incógnito) para simular al segundo jugador y ver cómo se sincroniza el movimiento.

-----

## Controles

  * **Movimiento:** Usa las **Flechas (⬆️ ⬇️)** o las teclas **W / S**.
  * El movimiento es fluido y sincronizado en tiempo real entre todos los clientes conectados.

-----

## Modo Desarrollo (Opcional)

Si quieres modificar el código y ver los cambios en caliente:

1.  Abre una terminal para el **Servidor**:
    ```bash
    cd server
    npm run dev
    ```
2.  Abre otra terminal para el **Cliente**:
    ```bash
    cd client
    npm run dev
    ```
3.  Abre la URL que te indique Vite (normalmente `http://localhost:5173`).

-----

## Limpieza

Si quieres borrar las carpetas compiladas y las dependencias para empezar de cero:

```bash
make clean
```
