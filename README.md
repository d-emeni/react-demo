# React User List App

This is a simple React application that fetches and displays a list of users from a backend API.

It is part of a hands-on project used in my Docker Networking tutorial on Dev.to:

## What this app does

- Fetches users from a backend API
- Displays them in a clean, simple UI
- Uses a modern file structure (`components/`, `services/`)
- Prepares you for containerizing frontend/backend projects with Docker


## Prerequisites

- Node.js (v18+ recommended)
- NPM
- Basic React knowledge (optional but helpful)


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


## Docker context

In the Docker project, this app is:

- Containerized using a Dockerfile

- Connected to a backend Node.js API container using Docker networking

- Communicates with the backend using internal container DNS (http://backend:5000)


## Folder structure
```bash
src/
├── components/
│   └── UserList.jsx      # UI component to display users
├── services/
│   └── api.js            # Fetch users from backend
├── App.jsx               # Root component
└── main.jsx              # App entry point
```


## Built with

- [React 18](https://react.dev/)

- [Vite](https://vite.dev/)

- Modern functional components + hooks


## License

MIT — feel free to use, modify, and learn from it.


## Author

Connect with me on [GitHub](https://github.com/d-emeni) or [LinkedIn](https://www.linkedin.com/in/deborahemeni/) 🚀