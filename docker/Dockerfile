FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git curl nodejs npm

# Install tools
RUN pip install promptfoo pyrit garak

# Install promptfoo globally
RUN npm install -g promptfoo

COPY . .

CMD ["bash"]