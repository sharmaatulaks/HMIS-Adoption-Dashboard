# ABDM – HMIS Onboarding Dashboard Toolkit

**Developed by: PMU ABDM, DNH and DD**

A lightweight, browser-based toolkit to track **ABDM HMIS Onboarding** status (District-wise, Facility Type × District matrix, HMIS software breakdown, and Slicer-filtered Line List) using HFR Registry and ABDM-Enabled Facilities exports.

---

## 📦 Toolkit Contents

- `index.html` — Complete interactive dashboard (no installation or backend required)
- `abdm-logo.jpg` — Official ABDM DNH & DD logo
- `Start_Dashboard.bat` — 1-click Windows launcher (`http://localhost:8090`)
- `data/` — Sample / current data files (`facility_details.xlsx` and `ABDM_Enabled_Facilities.csv`)

---

## 🚀 How to Use (For Recipients)

### Option A: 1-Click Launch on Windows (Recommended)
1. Extract the ZIP folder anywhere on your computer.
2. Double-click **`Start_Dashboard.bat`**.
3. Your browser will open at `http://localhost:8090` and automatically load the files in the `data/` folder.
4. Click **"Upload New Files / Edit Exclusions"** anytime to analyze new exports.

### Option B: Direct Browser Open (No Server Needed)
1. Double-click **`index.html`** to open it in Chrome, Edge, or any modern browser.
2. Drag & drop (or browse) **File 1** (Total Facility `.xlsx`) and **File 2** (ABDM-Enabled `.csv`).
3. Verify the **Program MIS Exclusion List** (`UWIN`, `UT OF DNH DD PUBLIC HEALTH MANAGEMENT PORTAL`, `PMNDP`, `Nikshay` — you can add or remove names).
4. Click **"Process & Generate Dashboard"**.

### Option C: Share Online for Mobile & Team Access (GitHub Pages)
1. Upload the folder contents (`index.html`, `abdm-logo.jpg`, and `data/`) to a GitHub repository.
2. Enable **Settings → Pages → Deploy from `main` branch**.
3. Share the published URL — it works seamlessly on **mobile phones, tablets, and desktops** and auto-loads the files inside `data/`.

---

## ⚙️ Data Matching Rules
- **Primary Key:** `Facility Id` / `Facility ID` (HFR ID)
- **File 1 Filter:** Includes only facilities where `Facility Status` = **Approved**
- **File 2 Filter:** Excludes Program MIS entries listed under `Display Name`
- **Status Logic:**
  - HFR ID found in filtered File 2 → **Facility is ABDM Enabled**
  - HFR ID not found → **Pending**
