# 🧠 E-Commerce Product Performance & Profitability Analysis

## 📌 Project Overview
This project explores product performance, profitability, and customer behavior within an e-commerce dataset using **SQL for data analysis** and **Tableau for visualization and storytelling**.

What began as an attempt to trace product flow across the data evolved into a deeper investigation of **revenue inefficiencies and conversion gaps**.

---

## 🎯 Business Objective
The goal of this project was to:

- Analyze how products perform across distribution centers
- Understand the relationship between **cost, potential profit, and realized profit**
- Identify **why realized revenue consistently falls short of potential revenue**
- Explore **customer demand patterns and product performance trends**

---

## 🧩 Phase 1: SQL Exploration (Data Investigation)

## ⚠️ Structural Data Gap: Missing End-to-End Product Traceability

A key limitation discovered during this analysis was the inability to fully track a product across its lifecycle.

### Initial Goal
The original objective was to trace:

> **Distribution Center → Product → Customer Purchase**

However, during SQL exploration:

- The dataset lacked a **direct relational path** connecting:
  - Inventory movement
  - Order transactions
  - Customer-level fulfillment
- Key identifiers required to unify this pipeline were either:
  - Missing
  - Indirect
  - Or not consistently structured

### Result
This made it impossible to:

- Track a specific product from **origin to final delivery**
- Measure true operational efficiency across the supply chain
- Build a complete end-to-end analytical pipeline

---

## 🔍 Analytical Impact

This limitation revealed an important distinction:

> The dataset supports **performance analysis**, but not **lifecycle tracking**

Instead of forcing incomplete conclusions, the analysis pivoted toward:

- Revenue efficiency
- Conversion gaps
- Product performance patterns

---

## 🧠 Key Insight

> Sometimes the most valuable insight is understanding **what the data cannot answer**

This gap highlights a real-world business need:

- Improved data architecture
- Better linkage between operational and transactional systems
- End-to-end product visibility

---

## 🔄 Transition to Revenue Analysis

Due to this limitation, the focus shifted to a more actionable question:

> **Why is there such a large gap between potential and realized profit?**

This pivot led to the core findings of the project, including:

- Conversion inefficiencies
- High-performing product characteristics
- Geographic performance differences

---

## 🔄 Phase 2: Analytical Pivot (New Direction)

After identifying the data limitation, the analysis shifted toward a more actionable question:

> **Why is there such a large gap between potential profit and realized profit?**

This reframed the entire project from:
- ❌ Data tracing problem  
to  
- ✅ Business performance problem

---

## 📊 Phase 3: Tableau Visualization & Storytelling

Using Tableau, the analysis was structured into a **data story** consisting of multiple dashboards.

### Key Visual Components:
- Geographic distribution of distribution centers
- Comparison of **cost vs potential vs realized profit**
- Product-level profitability across locations
- Identification of **high-performing vs low-performing products**
- Customer demand patterns (traffic sources)

---

## 🔍 Key Insights

### 💰 1. Realized Profit vs Potential Profit Gap
- Realized profit consistently falls **well below potential profit**
- In many cases, realized profit is **less than 50% of potential**
- Indicates a **conversion or sales efficiency issue**, not a pricing issue

---

### 📈 2. High Sales = High Profitability
- Products sold **7+ times** consistently show **200%–300%+ profit margins**
- Products sold **≤5 times rarely exceed 200% profit**
- Suggests strong alignment between:
  - Demand
  - Pricing
  - Profitability

---

### 🧭 3. Geographic Performance Differences
- Certain distribution centers (e.g., Savannah, GA) outperform others
- High-performing locations show:
  - Better alignment between demand and profitability
  - More consistent product success

---

### 🧵 4. Product Pattern Insights
Top-performing products tend to share characteristics:

- Animal prints (Cheetah, Bobcat)
- Bold / expressive designs
- Distinct visual styles

Lower-performing products:
- Simpler or less distinctive designs
- Lower engagement and conversion

---

### 📢 5. Customer Demand Sources
- Email is the most consistent driver of traffic
- Other channels (Ads, Social) vary by product
- No single channel dominates across all top performers

> **Insight:** Performance depends more on the *product* than the *channel*

---

## ⚠️ Data Limitations

- Unable to track full product lifecycle from distribution → customer
- Missing linkage between certain transactional and inventory data
- Limits deeper operational analysis (e.g., supply chain efficiency)

---

## 🧠 Key Takeaways

- Data analysis is not just about finding answers — it's about identifying **the right questions**
- Initial assumptions may lead to dead ends, requiring **adaptive thinking**
- Visualization transformed raw data into **clear business insights**
- The most valuable insight was not technical — it was **behavioral and operational**

---

## 🛠 Tools Used

- **SQL (BigQuery)** — Data extraction, joins, transformation
- **Tableau** — Dashboard creation, story building, visualization
- **GitHub** — Project organization and documentation

---

## 💭 Final Reflection

This project represents a full cycle of:

- Exploration  
- Confusion  
- Discovery  
- Adaptation  
- Execution  

It is not just a technical build — it is a reflection of **learning how to think through data**.

