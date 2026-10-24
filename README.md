# US Airline Delay Analytics & Prediction

Reconstructed GitHub-ready notebooks based on the **Group 2 Scalable Database / Big Data Analytics** Phase 1 and Phase 2 PowerPoint presentations.

## Scope
- **Phase 1:** Explore airline delay patterns (top origin airports, carriers, arrival vs departure delays). Original group work used AWS EMR, Hadoop, and Hive across several years; the notebook focuses on the 2003 analysis section.
- **Phase 2:** K-Nearest Neighbors classification of delayed flights, preprocessing, hyperparameter search for K=1–20, accuracy plots, and confusion matrix.
- **Optional:** Illustrative Decision Tree, Logistic Regression, and Random Forest comparison.

## Quick start
```bash
python -m venv .venv
# Windows: .venv\Scripts\activate
# macOS/Linux: source .venv/bin/activate
pip install -r requirements.txt
jupyter lab
```

Open `notebooks/01_flight_delay_eda.ipynb` or `notebooks/02_flight_delay_knn.ipynb`. Paths assume Jupyter's working directory is `notebooks/`.

## Data
The original raw data was **not included** in the slides. Download the US Airline On-Time Performance data from the [Harvard Dataverse / Data Expo 2009 dataset](https://dataverse.harvard.edu/) and place `2003.csv` and/or your group's `combined_flight_data.csv` in `data/`. These filenames are configurable in the notebooks. Do not commit large raw datasets or private credentials.

## Important methodological notes
- This repository is a **reconstruction from presentations**, not a recovery of original source files.
- Reported slide results (such as KNN K=19 at approximately 77% accuracy and XGBoost around 90%) are **not independently verified** here.
- Features are screened for direct outcome leakage, but retrospective classification should not be represented as a production-ready pre-departure prediction system without auditing feature availability at prediction time.
- The optional model-comparison notebook is illustrative and expects preparation variables from notebook 02; it is not independently standalone.

## Repository contents
- `notebooks/01_flight_delay_eda.ipynb` — exploratory analytics
- `notebooks/02_flight_delay_knn.ipynb` — main KNN model
- `notebooks/03_model_comparison.ipynb` — optional model comparison
- `sql/phase1_hive_queries.sql` — Hive analysis queries
- `requirements.txt` — Python dependencies
