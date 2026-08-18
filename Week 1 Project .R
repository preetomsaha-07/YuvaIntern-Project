project_objective <- list(
  goal = "Predict customer churn for a telecom company using R",
  problem_statement = "Identify key factors influencing churn and build a predictive model",
  expected_outcome = "Validated churn prediction model, insights, and recommendations"
)

research_background <- list(
  rationale = "Customer churn impacts profitability in subscription industries.",
  literature_review = c(
    "Logistic regression and decision trees widely used for churn prediction",
    "Feature importance analysis reveals actionable drivers (tenure, billing issues)",
    "Ensemble methods (Random Forest, XGBoost) outperform single models"
  )
)

project_phases <- data.frame(
  Phase = c("Data Collection", "Data Cleaning", "EDA", "Model Development", "Model Evaluation", "Reporting & Deployment"),
  Tasks = c("Gather dataset", 
            "Handle missing values, outliers, encoding", 
            "Visualize churn patterns, correlations", 
            "Train models (Logistic, RF, XGBoost)", 
            "Compare models with metrics", 
            "Create report, dashboards, recommendations"),
  Tools = c("readr, DBI", 
            "dplyr, tidyr, caret", 
            "ggplot2, corrplot", 
            "caret, randomForest, xgboost", 
            "caret, pROC", 
            "RMarkdown, Shiny"),
  Duration_weeks = c(1, 2, 2, 3, 1, 2)
)

roles <- list(
  Project_Manager = "Define scope, track progress, manage risks",
  Data_Analyst = "Perform EDA, visualize trends",
  Data_Engineer = "Data collection, cleaning, preprocessing",
  ML_Engineer = "Build and evaluate predictive models",
  Report_Writer = "Document findings, prepare RMarkdown report"
)

risks <- data.frame(
  Risk = c("Poor Data Quality", "Class Imbalance", "Overfitting Models", "Time Overruns", "Limited Domain Knowledge"),
  Mitigation = c("Robust cleaning, imputation, validate sources",
                 "Apply resampling (SMOTE, undersampling)",
                 "Cross-validation, regularization, ensembles",
                 "Stick to timeline, prioritize deliverables",
                 "Consult experts, review literature")
)

# 6. Resource Allocation
resources <- list(
  Software = c("RStudio", "caret", "ggplot2", "randomForest", "xgboost", "shiny"),
  Hardware = "Laptop/PC with 8GB RAM minimum",
  Data = "Telecom churn dataset (Kaggle or company-provided)",
  Documentation = "RMarkdown for reports, GitHub for version control"
)

print("Project Objective:")
print(project_objective)

print("Research Background:")
print(research_background)

print("Project Phases & Timeline:")
print(project_phases)

print("Roles & Responsibilities:")
print(roles)

print("Risk Management:")
print(risks)

print("Resource Allocation:")
print(resources)
