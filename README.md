# Operation-Analytics-and-Investigating-Metric-Spike

This project focuses on using SQL queries to do thorough analytics and investigations on a range of operational data. The objective of this project is to obtain insights about user behavior, engagement, growth trends, language distribution, email engagement, and more by examining the dataset that has been provided. Finding areas for improvement, enhancing user experiences, and making well-informed business decisions all depend on these insights.

## Table of Contents

- [Description](#description)
- [Tasks and Insights](#tasks-and-insights)
- [Requirements](#requirements)
- [Usage](#usage)
- [Contributing](#contributing)
  
## Description

This project's main objective is to use SQL queries to extract valuable insights from a real-world dataset. Numerous operational indicators are included in the dataset, including user growth, email interaction, language distribution, and user engagement. Understanding user behavior, enhancing product offerings, and refining corporate plans all depend on these indicators.

## Tasks and Insights

The project includes several analytical tasks, each followed by insights and recommendations derived from the data:

- **Task 1**: Calculate the number of jobs reviewed per hour per day in November 2020.
  - *Insight*: User activity varies throughout November, which could indicate potential trends or anomalies.
  - *Recommendation*: Investigate spikes and drops in job reviews to address any underlying issues affecting user engagement.
  
- **Task 2**: Calculate the 7-day rolling average of throughput.
  - *Insight*: Using a rolling average provides a smoother view of data trends, helping to identify long-term patterns.
  - *Recommendation*: Continue using the rolling average to observe trends without being influenced by daily fluctuations.

- **Task 3**: Calculate the percentage share of each language in the last 30 days.
  - *Insight*: Language distribution is relatively balanced, with Persian having the highest share.
  - *Recommendation*: Monitor language distribution and consider investing in language-specific content or features for languages with lower shares.

- **Task 4**: Display duplicate row count from the table.
  - *Insight*: There are two duplicate rows identified by the actor_id column having actor_id as 1005 and 1004.
  - *Recommendation*: Implement data validation mechanisms to prevent future duplicates and maintain data integrity.

- **Task 5**: Calculate the weekly user engagement.
  - *Insight*: User engagement peaked around week 30, with fluctuations over time.
  - *Recommendation*: Analyze factors behind engagement fluctuations and use insights to plan future engagement strategies.

- **Task 6**: Calculate the user growth for the product.
  - *Insight*: User growth has been positive over time, with some fluctuations.
  - *Recommendation*: Analyze growth periods and align them with product updates, marketing efforts, or market trends to sustain and accelerate growth.

- **Task 7**: Calculate the weekly retention of users-sign up cohort.
  - *Insight*: Weekly user retention gradually declined over time.
  - *Recommendation*: Focus on improving user retention strategies and enhancing user experience at critical touchpoints.

- **Task 8**: Calculate the weekly engagement per device.
  - *Insight*: Engagement varies across devices and weeks.
  - *Recommendation*: Optimize user experiences for devices with lower engagement and monitor device trends for adaptive strategies.

- **Task 9**: Calculate the email engagement metrics.
  - *Insight*: Email engagement metrics include an open rate of approximately 33.58% and a click rate of about 14.79%.
  - *Recommendation*: Compare metrics with industry benchmarks and optimize email content, subject lines, and targeting to enhance engagement.

## Requirements

To run the SQL queries and reproduce the insights in this project, you'll need:

- An SQL database management system (DBMS) such as MySQL, PostgreSQL, or SQLite.
- Access to the provided dataset.
- A basic understanding of SQL query syntax and functions.

## Usage

1. Clone this repository to your local machine.
2. Set up your SQL database environment and import the dataset.
3. Open your DBMS and execute the provided SQL queries to reproduce the insights.
4. Review the results and use the insights and recommendations for decision-making.

## Contributing

This project is open to contributions! Please feel free to submit pull requests if you want to add new analytical tasks, uncover problems, or offer ideas.

---

This project is to offer significant insights that can support data-driven decision-making and enhance several facets of the organization by doing in-depth analyses and investigations on operational indicators using SQL.
