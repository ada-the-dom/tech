# B.Tech Automation Test Suite

## Overview

UI automation tests for the B.Tech e-commerce website using **Robot Framework** with the **Browser Library (Playwright)**. Follows the **Page Object Model (POM)** pattern for reusable and maintainable test code.

## Test Scenario

1. Open https://btech.com/en
2. Search for "iphone 16"
3. Assert that the first product has an image
4. Add the first product to cart
5. Navigate to the cart page
6. Verify the cart page is displayed with the item

---

## Tech Stack

- Python 3.12+
- Node.js (required by Browser Library)
- Robot Framework
- Browser Library (Playwright)

---

## Project Structure

```
Automation-BTech/
├── resources/
│   └── browser.robot           # Browser setup and teardown
├── pages/
│   └── landing_page.robot      # Search, image assertion, add to cart
├── utils/
│   └── navigation.robot        # Reusable navigation keywords
├── tests/
│   └── AddIphoneToCart.robot   # Main test case
├── .gitignore
└── README.md
```

---

## Prerequisites

### Python 3.12+
- Download: https://www.python.org/downloads/
- **Mac**: `brew install python3`
- **Windows**: Download installer from python.org
- Verify: `python3 --version`

### Node.js
- Download: https://nodejs.org/
- **Mac**: `brew install node`
- **Windows**: Download installer from nodejs.org
- Verify: `node --version`

---

## Setup

```bash
# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate        # Mac/Linux
venv\Scripts\activate           # Windows

# Install dependencies
pip install robotframework robotframework-browser

# Initialize browser binaries
rfbrowser init
```

---

## Running the Tests

```bash
robot tests/AddIphoneToCart.robot
```

The browser opens in headed mode so you can watch the test execute.

---

## Test Reports

Robot Framework generates after each run:

- `report.html` — Test summary
- `log.html` — Detailed execution log
- `output.xml` — Machine-readable results

---

## Notes

- Test runs in **headed mode** (`headless=False`) for visibility
- CSS selectors are used for element identification
- Explicit waits ensure reliable execution
- POM structure keeps page actions separate from test logic