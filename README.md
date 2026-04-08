# llm-redteam-platform

# llm-redteam-platform

`llm-redteam-platform` is a project for building and managing red team workflows against large language models. It helps teams create adversarial scenarios, run tests, and review model behavior under attack-style prompts and edge cases.

## Features

- Define and manage red team scenarios and attack campaigns
- Create adversarial prompt suites and test cases
- Execute evaluations against LLM endpoints
- Track results, findings, and remediation actions
- Generate reports for model safety and robustness assessments

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/amitgu22/llm-redteam-platform.git
   cd llm-redteam-platform


   docker run -d \
  -p 8080:8080 \
  -p 50000:50000 \
  --name jenkins \
  jenkins/jenkins:lts