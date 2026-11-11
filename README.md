# VouchNexa — Production Telegram Digital Voucher Bot

A high-performance, production-ready Telegram Bot built with Python 3.11+, aiogram 3, and SQLAlchemy async.

## Features
- **Strict 5-button Customer Main Menu** (Shop, My Orders without status, Recovery, Support, How to Use)
- **Strict 8-button Admin Panel** (Dashboard, Shop, Stock Manager, Orders & Payments, Recovery, Users & Support, Reports & Logs, Settings)
- **Direct UPI QR Checkout** with exact amount QR codes
- **Automatic Private Owner Review Notification** to ID `8931707709` with instant Approve & Reject buttons
- **Safe Transactional Inventory Manager** supporting single, multi-line, and JSON adjacent objects (`{"voucher":"A"}{"voucher":"B"}`)
- **Strict 5-Event Logs Channel Policy** (`@vouchnexalogs`)
- **4-Minute Payment Window** & **3-Attempt Submission Limit**
- **Hourly Automated Stock Report Scheduler** in IST

## Railway Deployment Instructions
1. Push this repository to GitHub or link your repo to [Railway.app](https://railway.app).
2. Add a **PostgreSQL** database service in Railway.
3. In your bot service variables, configure:
   - `BOT_TOKEN`: Your Telegram Bot Token
   - `OWNER_ID`: `8931707709`
   - `MAIN_CHANNEL`: `@vouchnexa`
   - `DEALS_CHANNEL`: `@vouchnexaloot`
   - `LOGS_CHANNEL`: `@vouchnexalogs`
   - `SUPPORT_BOT`: `@VouchNexasupportBot`
   - `DATABASE_URL`: Railway `${{Postgres.DATABASE_URL}}`
4. Deploy! The bot will automatically start 24/7 long-polling via `python -m app`.
