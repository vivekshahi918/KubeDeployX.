# KubeDeployX - Fullstack Website Solution

## 📝 Problem Statement

KubeDeployX is a scalable and maintainable fullstack website solution. The project aims to address the common challenges faced by modern e-commerce platforms such as secure authentication, efficient order and product management, integrated payments, and a CI/CD-ready production pipeline with Kubernetes.

---

## 🚀 Solution Approach

- **Fullstack Architecture:** Built with Node.js, Express, MongoDB for backend and Next.js + TailwindCSS for frontend.
- **Modular Design:** APIs are grouped into separate modules such as auth, products, orders, users, reviews, and Stripe payment/refund.
- **Scalable Infrastructure:** Containerized using Docker and orchestrated via Kubernetes (Minikube for local, cloud-ready).
- **CI/CD:** Automated workflows using GitHub Actions.
- **Postman Collection:** All APIs are documented and ready to test via Postman.
- **Payment Integration:** Stripe integration for secure transactions.

---

## 🏗️ Project Structure

KubeDeployX/ │ 
├── app/ # Backend logic & API routes (auth, products, orders, etc.)
├── configs/ # Application & environment configuration files (MongoDB, .env) 
├── models/ # Mongoose models/schemas for MongoDB 
├── monitoring/ # Health checks and monitoring services 
├── k8s/ # Kubernetes manifests (Deployments, Services, ConfigMaps) 
├── terraform/ # Terraform infrastructure as code configs (optional) 
├── .github/ │ └── workflows/ # CI/CD pipeline configurations (GitHub Actions) 
├── Dockerfile.backend # Dockerfile for backend service 
├── Dockerfile.frontend # Dockerfile for frontend service 
├── docker-compose.yml # Docker Compose setup for local development 
├── README.md # Project documentation 
└── .env.example # Example environment variable file

---


---

## 🛠️ Tech Stack

- **Backend:** Node.js, Express.js, MongoDB, Mongoose
- **Frontend:** Next.js, TailwindCSS
- **Payment:** Stripe API
- **Infrastructure:** Docker, Kubernetes (Minikube), GitHub Actions (CI/CD)
- **Monitoring:** Basic health checks (can integrate Prometheus/Grafana later)
- **API Testing:** Postman Collection (included)

---

## ⚙️ Installation & Setup

### 1️⃣ Clone the Repo
git clone https://github.com/vivekshahi918/KubeDeployX.git
cd KubeDeployX

###2️⃣ Environment Variables
MONGO_URI=your_mongo_uri
JWT_SECRET=your_jwt_secret
STRIPE_SECRET_KEY=your_stripe_key

###3️⃣ Local Development with Docker Compose
docker-compose up --build

***☸️ Kubernetes Deployment (Minikube)
Step 1: Start Minikube
  minikube start

Step 2: Apply Kubernetes manifests
  kubectl apply -f k8s/

Step 3: Access Service
  minikube service kube-frontend

🚦 CI/CD Pipeline (GitHub Actions)
    Located at .github/workflows/
    Automatically runs:
    Linting (ESLint)
    Unit & integration tests
    Docker build & push
    Kubernetes deployment (optional)

 Stripe Payments 💳   

📬 Postman API Collection
Base URL
For local: http://localhost:3000/api
For production: https://treva-trends-nextjs.vercel.app

---

📚 API Modules
/auth/

POST /auth/login
POST /auth/register
/users/

GET /users/:id
PUT /users/:id
/product/

POST /product
GET /product/:id
PUT /product/:id
DELETE /product/:id
/orders/

POST /orders
GET /orders
/reviews/

POST /reviews
GET /reviews/:productId
/stripe_client_secret/

POST /create-client-secret
/stripe_refund/

POST /create-refund

---

📝 Documentation
API usage: provided inside the Postman collection.
Payment flows: Stripe integration for checkout and refunds.
Kubernetes manifests: located inside /k8s/ folder.

---

🧑‍💻 Authors
Vivek Shahi - Developer








