# Hospital Database System Design

## Overview

This project involves the design and modeling of a relational database system to support hospital operations including patient admissions, nurse assignments, treatments, bed management, and billing.

The goal was to translate real-world hospital workflows into a structured relational schema using ERD/EERD modeling, normalization principles, and clearly defined business rules.

---

## Business Problem

Hospitals manage complex relationships between nurses, doctors, patients, wards, treatments, and billing events. Without a structured database system:

- Patient assignments can become inconsistent
- Bed availability cannot be accurately tracked
- Treatment and billing data may be fragmented
- Supervisory relationships between staff may be unclear

This project addresses these challenges through structured relational design.

---

## System Objectives

- Track nurse assignments and supervisory relationships
- Manage patient admissions and discharge workflows
- Monitor ward structure and bed availability
- Record treatments performed by doctors
- Capture itemized patient charges
- Log nurse–patient care events

---

## Entities Modeled

- **Nurse**
- **Doctor**
- **Patient**
- **Ward**
- **Bed**
- **Treatment**
- **Item (Charges)**

Each entity includes defined primary keys and foreign keys to enforce referential integrity.

---
## Data Modeling

### ERD
![ERD Diagram](docs/assets/erd-diagram.png)

### EERD
![EERD Diagram](docs/assets/eerd-diagram.png)

The ERD and EERD diagrams illustrate:

- Cardinality relationships (1:1, 1:M, M:M)
- Optionality constraints
- Supervisory nurse hierarchy
- Multi-doctor treatment relationships
- Patient billing dependencies

---

## Key Business Rules Implemented

- A nurse must be assigned to at least one ward (1:M)
- Nurses may supervise other nurses (self-referencing relationship)
- A ward must have one charge nurse (1:1)
- A patient must be assigned to one bed at a time (1:1)
- A patient can receive treatments from multiple doctors (M:M)
- A doctor can admit and discharge multiple patients (1:M)
- Patients must incur at least one treatment or charge (1:M)
- A ward contains multiple beds (1:M)

---

## Normalization

The schema was normalized to **Third Normal Form (3NF)** to:

- Eliminate redundancy
- Maintain data integrity
- Prevent update anomalies

---

## SQL Implementation

Sample reporting queries are included in:

These queries demonstrate:

- Multi-table joins
- Aggregations
- Operational reporting logic
- Analytical data retrieval

---

## Project Structure
hospital-database-design/
│
├── assets/
│ ├── erd-diagram.png
│ └── eerd-diagram.png
│
├── docs/
│ └── hospital-database-documentation.docx
│
├── sql/
│ └── 04_sample_queries.sql
│
└── README.md

---

## Key Concepts Demonstrated

- ERD & EERD Modeling
- Cardinality & Optionality
- Referential Integrity
- Schema Normalization (3NF)
- SQL Query Development
- Translation of Business Rules into Data Structures

---

## Author

Preciosa Muujiza Ngoy Kalumba  
M.S. Artificial Intelligence & Business Analytics  
University of South Florida


