# ☕ Coffee Shop Management & Smart POS System

A comprehensive, all-in-one smart management and POS ecosystem designed for coffee shops and beverage chains. The platform seamlessly unifies in-store counter sales (Takeaway POS), on-table QR ordering (Dine-in QR), online delivery orders, a real-time Kitchen Display System (KDS), AI-powered facial recognition attendance kiosks, and deep business intelligence analytics for administrators.

---

## 📌 Table of Contents
- [1. Project Overview](#1-project-overview)
- [2. Key Features](#2-key-features)
- [3. Technology Stack](#3-technology-stack)
- [4. Project Structure](#4-project-structure)
- [5. Installation & Local Development](#5-installation--local-development)
- [6. Team Members & Contributions](#6-team-members--contributions)
- [7. License](#7-license)

---

## 1. Project Overview

In the modern Food & Beverage (F&B) industry, real-time synchronization between departments (Cashier – Servers – Baristas – Management – Customers) is vital for operational velocity and customer satisfaction. The **Coffee Shop Management System** solves end-to-end operational challenges through:

* **Omnichannel Sales:** In-store POS (Takeaway), table-side ordering (Dine-in POS), contactless table-top QR ordering (QR Dine-in), and door-to-door online delivery (Online Delivery).
* **Artificial Intelligence (AI):** Powered by **Google Gemini** for intelligent customer drink recommendations and automated admin marketing/SEO blog generation; integrated with **AWS Rekognition** for contactless, highly accurate facial recognition staff attendance.
* **Real-time Synchronization:** Instant order lifecycle dispatching between Floor Staff, Cashiers, and Baristas powered by **Socket.io**.
* **Automated Recipe & Cash Control:** Dynamic recipe deduction by drink size automatically updates inventory levels in real time; cash session tracking eliminates register discrepancies and revenue leakage.
* **Customer Reputation Shield:** Dynamic credit scoring algorithm based on phone numbers, preventing fake orders and door-to-door delivery cancellations (boom orders).

---

## 2. Key Features

### 2.1. Customer Web Portal
* **Interactive Homepage:** Dynamic hero banner slider, highlighted featured categories, best-selling beverages, instant search bar, marketing news/events section, and comprehensive store info & policies in the footer.
* **Flash Sale Events:** Real-time countdown timer displaying time-limited promotional pricing and purchase quotas.
* **Menu Customization & Personalization:** Multi-size drink options (Size S, M, L), customized ice and sugar levels, rich selection of drink toppings, and custom notes.
* **Smart Shopping Cart:** Quick Add to cart, real-time quantity adjustments, size/topping editing, and effortless item removal.
* **AI Chatbot Concierge (Google Gemini):** Natural language conversational assistant that recommends drinks tailored to user preferences, mood, weather, or budget; answers menu inquiries and promotional policies; enables direct one-click add-to-cart within the chat.
* **Online Delivery Ordering:**
  * **Vietmap API Integration:** Smart address autocomplete and real-time distance matrix routing to calculate accurate shipping fees.
  * Payment flexibility: Cash on Delivery (COD) or instant VietQR bank transfer via **PayOS Gateway**.
  * Voucher discount codes (Coupons) and loyalty reward points redemption.
* **Contactless Dine-in QR Ordering:** Customers scan a table-specific QR code to access the digital menu, submit orders directly to the bar without waiting for waitstaff, and pay online.
* **Product Reviews & Ratings:** Authenticated customers who have purchased an item can leave 1-to-5 star ratings and detailed feedback.
* **Personal Account Management:** Register, Login, Google OAuth single sign-on, Email OTP verification, order history tracking with real-time status notifications.

### 2.2. Staff & Cashier POS
* **Takeaway POS Terminal:** Fast-action touch-friendly counter interface: select sizes, toppings, sugar/ice levels, and instantly print receipt or trigger payment.
* **Table & Area Floor Map (Dine-in):** Visual interactive floor layout segmented by area (e.g., 1st Floor, 2nd Floor, Patio) showing real-time table statuses (*Vacant / Occupied / Reserved*), with table transfer and table merging capabilities.
* **Split Bill:** Split orders by selected items or divide total bills evenly among patrons seated at the same table.
* **Cash Drawer Session Management:** Enforces opening shifts aligned with the employee's rostered schedule, records opening cash float, reconciles cash and cashless transactions at shift close, and logs drawer discrepancies.
* **Receipt Printing:** Generates branded customer receipts with customizable store branding, wifi credentials, hotline, and footer notes.

### 2.3. Barista Kitchen Display System (KDS)
* **Real-time Order Feed:** Live order dispatch powered by **Socket.io** across Takeaway, Dine-in, QR, and Online Delivery channels.
* **Kitchen Workflow Management:** Order status progression: *Pending ➔ In Progress ➔ Completed*.
* **Digital Recipe Guide:** One-click recipe viewer detailing exact ingredient portions per drink size to guarantee beverage consistency.
* **Work Schedule & Shifts:** Personal roster viewing and shift attendance logs.

### 2.4. Facial Recognition Attendance Kiosk
* **Contactless AI Clock-in/Clock-out:** Dedicated tablet/screen kiosk mode running real-time facial recognition against an **AWS Rekognition** face collection.
* **Roster Validation:** Automatic comparison against planned employee work shifts, recording exact check-in/check-out timestamps, late arrivals, and early departures without ID cards or fingerprints.

### 2.5. Administrator Management (Admin Dashboard)
* **Business Intelligence & Reporting:** Revenue charts (daily/weekly/monthly), sales breakdown by payment methods (Cash vs. PayOS), top-selling products, Shift Reports, and comprehensive End-of-Day (EOD) financial reconciliations.
* **Menu Management:** Categories, Products, Multi-sizes (S/M/L), and Toppings with Cloudinary image hosting and automated slug generation.
* **Recipe & Inventory Management:** Ingredient recipes mapped per product size; automated stock reduction upon order fulfillment; low-stock threshold alerts.
* **Areas, Tables & QR Code Generator:** Floor plan layout builder with automated QR code generator for printable on-table stickers.
* **Workforce Shift Scheduling:** Shift templates (Morning, Afternoon, Evening), monthly/weekly staff assignment matrix, and shift swap approval.
* **Attendance Oversight:** Centralized attendance log auditing and new employee facial biometric enrollment into the AWS Rekognition collection.
* **Promotions & Flash Sales:** Create discount vouchers (percentage or fixed amount, usage limits, validity dates) and configure scheduled Flash Sale time windows.
* **Customer Loyalty Program:** Configure point accumulation rates based on order values and point redemption exchange rates; multi-tier levels (Bronze, Silver, Gold, Diamond).
* **Customer Reputation Management:** Phone number reputation scoring (0–100) reflecting order history (completed, online paid, canceled, or rejected delivery/boom orders); option to restrict COD for untrusted numbers.
* **Review Moderation:** Review inspection, approval, deletion, and official manager reply capabilities.
* **Marketing Blog & AI Content Generator:** Article editor integrated with **Google Gemini AI** to produce SEO-optimized marketing copy, product highlights, and coffee news.
* **Banner & Receipt Settings:** Dynamic slider banner management and receipt template personalization (store logo, contact info, thank-you messages).
* **Role-Based Access Control (RBAC):** Granular permissions for 5 user roles (*Admin, Staff, Barista, Customer, Attendance Kiosk*).

---

## 3. Technology Stack

| Layer | Technologies / Libraries | Role & Purpose |
| :--- | :--- | :--- |
| **Frontend** | React 18, Vite | Fast Single Page Application (SPA) architecture |
| | Tailwind CSS, Lucide React | Clean, responsive UI with modern scalable icons |
| | React Router DOM v6 | Client-side routing with `RoleGuard` authorization |
| | Axios, Zustand / React State | Centralized state management & REST API handling |
| | Socket.io-client | Real-time bi-directional events and order notifications |
| **Backend** | Node.js, Express.js | Modular, layered MVC/Service RESTful API Server |
| | MySQL, `mysql2/promise` | Relational database with connection pool optimization |
| | Socket.io | Server-side WebSockets engine for instant updates |
| | JWT (JSON Web Token), Bcryptjs | Secure token authentication & password encryption |
| | Multer, Cloudinary SDK | Cloud-based media and image asset storage |
| | Joi / Zod | Strict request payload validation |
| | Winston, Morgan | Industrial-grade logging and HTTP request profiling |
| **Artificial Intelligence** | **Google Gemini API** (`@google/genai`) | Powers the customer AI Chatbot & admin news writing assistant |
| | **AWS Rekognition** (`@aws-sdk/client-rekognition`) | Biometric facial vector extraction & identity matching |
| **Integrations** | **PayOS SDK** | Automated online payments via VietQR dynamic QR codes |
| | **Vietmap API** | Address autocomplete, geocoding, and distance matrix routing |
| | **Nodemailer** | Transactional emails for account verification and OTP |
| **Testing & CI/CD** | Jest, Supertest | Automated Unit Testing and API Integration Testing |
| | GitHub Actions, Azure Static Web Apps | Automated build, test, and deployment CI/CD pipelines |

---

## 4. Project Structure

```text
coffee-shop/
├── .github/workflows/                 # CI/CD deployment workflows (GitHub Actions, Azure)
├── DB.sql                             # Complete MySQL schema and initial setup script
├── README.md                          # Project documentation
│
├── coffee-shop-backend/               # BACKEND REPOSITORY (Node.js/Express)
│   ├── src/
│   │   ├── config/                    # Database, Cloudinary, PayOS, and Environment setup
│   │   ├── controllers/               # Request routing and response dispatchers
│   │   ├── helpers/                   # Utilities (date formatting, string helpers, etc.)
│   │   ├── jobs/                      # Background jobs (cron jobs for expired orders, etc.)
│   │   ├── middlewares/               # JWT authentication, role authorization, upload, errors
│   │   ├── models/                    # Database schema definitions
│   │   ├── repositories/              # Direct SQL queries and database interaction layer
│   │   ├── routes/                    # API endpoints registration
│   │   ├── services/                  # Core business logic processing
│   │   ├── socket/                    # WebSocket connection handling & event dispatchers
│   │   ├── utils/                     # ErrorResponse, response handlers, QR generators
│   │   └── validators/                # Input validation schemas (Joi / Zod)
│   ├── __tests__/                     # Automated test suites (Jest / Supertest)
│   ├── server.js                      # Application entry point
│   └── package.json
│
└── coffee-shop-frontend/              # FRONTEND REPOSITORY (React/Vite)
    ├── public/                        # Static assets, logos, and config files
    ├── src/
    │   ├── components/                # Reusable UI widgets (Header, Footer, Modals, etc.)
    │   ├── constants/                 # Route paths, storage keys, and config variables
    │   ├── hooks/                     # Custom hooks (data fetching, debounce, auth checks)
    │   ├── pages/                     # Application pages grouped by role:
    │   │   ├── admin/                 # Admin modules (Dashboard, Menu, Inventory, Shifts, etc.)
    │   │   ├── staff/                 # Staff POS (Takeaway, Dine-in tables, Split bill, etc.)
    │   │   ├── barista/               # Barista KDS order screen & recipe lookup
    │   │   ├── attendance/            # Kiosk facial recognition attendance screen
    │   │   ├── authentication/        # Login, Register, Forgot Password, Reset Password
    │   │   ├── homePage/              # Customer storefront, cart, checkout, news, policies
    │   │   └── common/                # Shared pages (Profile, PayOS result, Policies)
    │   ├── routes/                    # AppRoutes & RoleGuard route protection
    │   ├── services/                  # Axios HTTP client API integrations
    │   └── utils/                     # Formatting utilities (currency, dates, helpers)
    ├── vite.config.js
    └── package.json
```

---

## 5. Installation & Local Development

### 5.1. Prerequisites
* **Node.js:** Version `>= 18.x`
* **MySQL Server:** Version `>= 8.0`
* **Git:** Version control

---

### 5.2. Database Setup
1. Open your MySQL client (MySQL Workbench, phpMyAdmin, or terminal).
2. Create a new database (e.g., `coffeeshop_db`):
   ```sql
   CREATE DATABASE coffeeshop_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
   ```
3. Import the root `DB.sql` file into your newly created database.

---

### 5.3. Backend Setup
1. Navigate to the backend directory:
   ```bash
   cd coffee-shop-backend
   ```
2. Install all dependencies:
   ```bash
   npm install
   ```
3. Create a `.env` environment file in `coffee-shop-backend/`:
   ```env
   NODE_ENV=development
   PORT=5000
   CLIENT_URL=http://localhost:5173

   # MySQL Configuration
   DB_HOST=localhost
   DB_USER=root
   DB_PASSWORD=your_mysql_password
   DB_NAME=coffeeshop_db
   DB_PORT=3306

   # JWT Security
   JWT_SECRET=your_jwt_secret_key
   JWT_EXPIRES_IN=7d
   JWT_REFRESH_SECRET=your_jwt_refresh_secret
   JWT_REFRESH_EXPIRES_IN=30d

   # Google OAuth & Nodemailer
   GOOGLE_CLIENT_ID=your_google_client_id
   SMTP_HOST=smtp.gmail.com
   SMTP_PORT=465
   SMTP_SECURE=true
   SMTP_USER=your_email@gmail.com
   SMTP_PASSWORD=your_email_app_password

   # Cloudinary Media Storage
   CLOUDINARY_CLOUD_NAME=your_cloud_name
   CLOUDINARY_API_KEY=your_cloudinary_api_key
   CLOUDINARY_API_SECRET=your_cloudinary_api_secret

   # AI & External Services
   GEMINI_API_KEY=your_gemini_api_key
   GEMINI_API_KEY_AI=your_gemini_api_key
   VIETMAP_API_KEY=your_vietmap_api_key

   # PayOS Payment Gateway
   PAYOS_CLIENT_ID=your_payos_client_id
   PAYOS_API_KEY=your_payos_api_key
   PAYOS_CHECKSUM_KEY=your_payos_checksum_key
   PAYOS_RETURN_TAKEAWAY_ORDER_URL=http://localhost:5173/staff/payment-result
   PAYOS_CANCEL_TAKEAWAY_ORDER_URL=http://localhost:5173/staff/takeaway

   # AWS Rekognition Attendance
   AWS_REGION=ap-southeast-1
   AWS_ACCESS_KEY_ID=your_aws_access_key
   AWS_SECRET_ACCESS_KEY=your_aws_secret_key
   AWS_REKOGNITION_COLLECTION=coffeeshop-staff
   ```
4. Start the backend service:
   ```bash
   # Development mode with hot-reloading
   npm run dev

   # Run automated test suites
   npm test
   ```
   *The backend server will run at:* `http://localhost:5000`

---

### 5.4. Frontend Setup
1. In a new terminal window, navigate to the frontend directory:
   ```bash
   cd coffee-shop-frontend
   ```
2. Install all dependencies:
   ```bash
   npm install
   ```
3. Create a `.env` file in `coffee-shop-frontend/`:
   ```env
   VITE_API_URL=http://localhost:5000/api
   VITE_SOCKET_URL=http://localhost:5000
   VITE_GOOGLE_CLIENT_ID=your_google_client_id
   VITE_SHOP_LATITUDE=21.0135
   VITE_SHOP_LONGITUDE=105.5255
   ```
4. Start the frontend application:
   ```bash
   npm run dev
   ```
   *The client web application will run at:* `http://localhost:5173`

---

## 6. Team Members & Contributions

### 👤 Tran Tuan
* **Customer Homepage:** Engineered the entire customer storefront including: dynamic product catalog browsing, featured drinks section, instant home search bar, best-selling beverages list (Best Sellers), Flash Sale zone with real-time countdown timer, dynamic promotional banner carousel, featured news & events feed, comprehensive footer, and store policy pages.
* **Shopping Cart System:** Built add-to-cart workflows, Quick Add action, detailed cart modal, quantity adjustments, dynamic size/topping modifications, and item removal.
* **AI Chatbot Concierge (Google Gemini):** Developed the natural language AI assistant providing tailored drink suggestions based on user taste/mood, answering menu and discount inquiries, and supporting direct one-click add-to-cart operations within the conversation.
* **Promotions & Flash Sale Management (Admin):** Developed backend and admin interfaces for managing promotional discount vouchers and scheduling time-limited Flash Sale events with inventory quantity limits.
* **Product Review Management (Admin):** Built the admin moderation dashboard to inspect, approve/reject, and officially respond to customer product reviews.
* **Customer Product Reviews:** Allowed authenticated customers who completed purchases to submit 1-to-5 star ratings and detailed written reviews.
* **News Management & AI Content Creator (Admin):** Built the article and blog management module integrated with Google Gemini AI to automatically generate engaging, SEO-friendly promotional copy and beverage introduction articles.
* **Banner Management (Admin):** Developed full CRUD operations and visibility toggles for the homepage hero carousel banners.

---

### 👤 Van
* **Authentication & Security:** Implemented User Registration, Login, Forgot Password, Change Password, Email OTP verification via Nodemailer, and Google OAuth single sign-on.
* **User Management & RBAC:** Managed user accounts, user profiles, and role-based access control across the 5 system roles.
* **Customer Reputation System:** Designed the customer credit scoring engine (0–100) tied to phone numbers to incentivize successful orders and prevent fraudulent cancellations/boom orders.
* **Customer Loyalty Program:** Built customer reward points tracking, redemption conversion rules, and tier classification (Bronze, Silver, Gold, Diamond).
* **Payment & Mapping Integrations:** Integrated the PayOS payment gateway for dynamic VietQR code generation and the Vietmap API for smart address autocomplete and automated delivery fee calculation.

---

### 👤 Hung
* **Category & Product Management:** Developed API services and management UI for categories, product records, pricing, and Cloudinary image asset handling.
* **Shift Scheduling & Shift Swapping:** Built shift template configurations, monthly/weekly employee roster assignment, and shift exchange requests.
* **Cash Drawer Session Management:** Implemented opening cash float tracking, cash and cashless reconciliation at shift close, cash drawer discrepancy auditing, and session history logs.
* **Takeaway POS Terminal:** Implemented counter sales workflows for quick ordering and receipt generation for cashier staff.

---

### 👤 Khai
* **Facial Recognition Attendance Kiosk:** Engineered contactless biometric clock-in/out workflows using camera feeds and AWS Rekognition collection indexing.
* **Inventory & Ingredients Management:** Developed tracking for raw ingredients, unit conversions, stock levels, and low-inventory warnings.
* **Product Recipe Management by Size:** Configured ingredient quantities per product size to enable automated stock deduction upon order completion.
* **Topping Management:** Built CRUD interfaces and pricing configurations for drink toppings.
* **Barista Kitchen Display System (KDS):** Developed the live kitchen display interface powered by Socket.io for tracking real-time beverage preparation workflows.
* **On-table QR Ordering:** Engineered the customer-facing dine-in QR ordering interface.

---

### 👤 Tien
* **Admin Dashboard & Analytics:** Developed the executive analytics dashboard featuring financial charts, total order metrics, and best-selling product leaderboards.
* **Shift & End-of-Day (EOD) Reports:** Engineered financial reconciliation modules auditing daily cash and online revenue across shifts.
* **Area & Floor Table Layouts:** Developed area management and visual table layout status monitors (*Vacant, Occupied, Reserved*) with table-specific QR code generation.
* **Dine-in Waitstaff POS:** Implemented table-side service workflows including table creation, ordering, table transfers, and table merging.
* **Split Bill Feature:** Developed dynamic bill-splitting logic by individual items or divided totals.
* **Barista Dashboard:** Designed the barista productivity overview and beverage fulfillment analytics.

---

### 👤 Kien
* **Quality Assurance (QA / QC) & Test Planning:** Designed comprehensive test suites and functional test cases across integrated cross-role workflows (Customer ➔ POS ➔ Barista ➔ Admin).
* **Automated Testing:** Authored and maintained automated Unit and Integration tests using **Jest** and **Supertest** covering controllers, services, and middlewares.
* **CI/CD & DevOps Pipeline:** Configured continuous integration workflows via **GitHub Actions** and continuous delivery to **Azure Static Web Apps**.
* **System Documentation:** Contributed to system architecture documentation, database schema definitions, and administrative operational runbooks.

---

## 7. License

This project is developed for educational, research, and production-grade F&B business management purposes. All contributions and rights belong to the project team members.
