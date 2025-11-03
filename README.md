# React User List App

This is a simple React application that fetches and displays a list of users from a backend API.

It is part of a hands-on project used in my Docker Networking tutorial on [Dev.to]():

## What this app does

- Fetches users from a backend API
- Displays them in a clean, simple UI
- Uses a modern file structure (`components/`, `services/`)
- Supports `.env` config for clean API setup
- Containerized and served using Nginx for production
- Demonstrates Docker networking with a frontend-backend setup


## Prerequisites

- Node.js (v18+ recommended for local dev)
- NPM
- Basic React knowledge (optional but helpful)
- Docker (optional, if following the containerization section)


## How to run locally

1. Clone the repository:

   ```bash
   git clone https://github.com/d-emeni/react-demo.git
   cd react-demo
   ````
2. Install dependencies:
    ```bash
    npm install
    ```
3. Start the dev server:
    ```bash
    npm run dev
    ```
4. Visit the app in your browser: http://localhost:5173


## Environment variables
This project uses a `.env` file to set the API base URL:

```env
VITE_API_BASE_URL=http://localhost:4000
```
When containerized, this value is updated to use a relative path (e.g., /api) and the request is proxied via Nginx.


## Docker context

In the Docker section of the project, this app is:

- Built with a multi-stage Dockerfile using `node:22` and `nginx`

- Served using Nginx in a lightweight, production-optimized container

- Connected to a backend container over a shared Docker network

- Communicates with the backend using container DNS (http://backend:4000)

- Uses a relative path (/api) with Nginx proxy rules in production


## Folder structure
```bash
src/
├── components/
│   └── UserList.jsx      # UI component to display users
├── services/
│   └── api.js            # Handles API calls using VITE_API_BASE_URL
├── App.jsx               # Root component
└── main.jsx              # App entry point
```


## Built with

- [React 18](https://react.dev/)
- [Vite](https://vite.dev/)
- Functional components + hooks
- Docker + Nginx for containerized builds


## License

MIT — feel free to use, modify, and learn from it.


## Author

Connect with me on [GitHub](https://github.com/d-emeni) or [LinkedIn](https://www.linkedin.com/in/deborahemeni/) 🚀
