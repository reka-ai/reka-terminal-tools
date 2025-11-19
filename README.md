# Reka Terminal Tools

[![Join our Discord](https://img.shields.io/badge/Discord-%235865F2.svg?style=for-the-badge&logo=discord&logoColor=white)](https://link.reka.ai/discord)  [![Reka AI](https://img.shields.io/badge/Power%20By-2E2F2F?style=flat&logo=data%3Aimage%2Fsvg%2Bxml%3Bbase64%2CPD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyBpZD0iTGF5ZXJfMSIgZGF0YS1uYW1lPSJMYXllciAxIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA2NjYuOTQgNjgxLjI2Ij4KICA8ZGVmcz4KICAgIDxzdHlsZT4KICAgICAgLmNscy0xIHsKICAgICAgICBmaWxsOiBub25lOwogICAgICB9CgogICAgICAuY2xzLTIgewogICAgICAgIGZpbGw6ICNmMWVlZTc7CiAgICAgIH0KICAgIDwvc3R5bGU%2BCiAgPC9kZWZzPgogIDxyZWN0IGNsYXNzPSJjbHMtMSIgeD0iLS4yOSIgeT0iLS4xOSIgd2lkdGg9IjY2Ny4yMiIgaGVpZ2h0PSI2ODEuMzMiLz4KICA8Zz4KICAgIDxwYXRoIGNsYXNzPSJjbHMtMiIgZD0iTTMxOC4zNCwwTDgyLjY3LjE2QzM2Ljg1LjE5LS4yOSwzNy4zOC0uMjksODMuMjd2MjM1LjEyaDc0LjkzVjcxLjc1aDI0My43M1YwaC0uMDNaIi8%2BCiAgICA8cGF0aCBjbGFzcz0iY2xzLTIiIGQ9Ik03Mi45NywzNjIuOTdIMHYzMTguMTZoNzIuOTd2LTMxOC4xNloiLz4KICAgIDxwYXRoIGNsYXNzPSJjbHMtMiIgZD0iTTMxNS4zMywzNjIuODRoLTk5LjEzbC0xMDkuNSwxMDcuMjljLTEzLjk1LDEzLjY4LTIxLjgyLDMyLjM3LTIxLjgyLDUxLjkyczcuODYsMzguMjQsMjEuODIsNTEuOTJsMTA5LjUsMTA3LjI5aDEwMS42M2wtMTYyLjQ1LTE2MS43MiwxNTkuOTUtMTU2LjY3di0uMDNaIi8%2BCiAgICA8cGF0aCBjbGFzcz0iY2xzLTIiIGQ9Ik0zNDguNTksODIuOTJ2MTUyLjIzYzAsNDUuOTIsMzcuMTYsODMuMTEsODMuMDUsODMuMTFoMjMwLjI4di03MS43OGgtMjQwLjMzVjg1Ljg3YzAtNy43NCw2LjI4LTE0LjA2LDE0LjA1LTE0LjA2aDE0NC4zMmM3Ljc0LDAsMTQuMDUsNi4yOCwxNC4wNSwxNC4wNiwwLDUuOS0zLjcxLDExLjE3LTkuMjMsMTMuMmwtMTQ3LjQ1LDU2LjIzdjcwLjczbDE3NC41Ny02Mi4yYzMzLjA0LTExLjgsNTUuMTEtNDMuMTMsNTUuMTEtNzguMjZ2LTIuNjdDNjY3LDM3LDYyOS44LS4xOSw1ODMuOTUtLjE5aC0xNTIuMjdjLTQ1Ljg5LDAtODMuMDUsMzcuMTktODMuMDUsODMuMTFoLS4wM1oiLz4KICAgIDxwYXRoIGNsYXNzPSJjbHMtMiIgZD0iTTY2Ni45NCw1OTguMTJ2LTE1Mi4yM2MwLTQ1Ljg5LTM3LjE2LTgzLjExLTgzLjA1LTgzLjExaC0yMzAuMjh2NzEuNzhoMjQwLjMzdjE2MC42MWMwLDcuNzQtNi4yOCwxNC4wNi0xNC4wNSwxNC4wNmgtMTQ0LjMxYy03Ljc0LDAtMTQuMDUtNi4yOC0xNC4wNS0xNC4wNiwwLTUuOSwzLjcxLTExLjE3LDkuMjMtMTMuMmwxNDcuNDUtNTYuMjN2LTcwLjczbC0xNzQuNTcsNjIuMmMtMzMuMDQsMTEuOC01NS4xMSw0My4xMy01NS4xMSw3OC4yNnYyLjY3YzAsNDUuOTIsMzcuMTYsODMuMTEsODMuMDUsODMuMTFoMTUyLjI3YzQ1Ljg5LDAsODMuMDUtMzcuMTksODMuMDUtODMuMTFoLjAzWiIvPgogIDwvZz4KPC9zdmc%2B&logoSize=auto&labelColor=2E2F2F&color=F1EEE7)](https://reka.ai/)

Command-line tools for interacting with the Reka AI API directly from your terminal. Letting you chat with language models and perform research with real-time web results.

## Usage

### Chat

Chat let you ask quesition to a language model using the `?` command.

```bash
? "What is the capital of France"
 The capital of France is Paris. It's located in the central-northern part of the country along the Seine River. Paris is known for its rich history, stunning architecture, and cultural landmarks such as the Eiffel Tower, Louvre Museum, and Notre-Dame Cathedral.
```

### Research

Compare to the chat command, the research command `??` provides real-time web results in one call. Built for developers who need answers that are accurate, auditable, and grounded in evidence.

```bash
?? "What are the latest developments in AI"
The latest developments in AI in 2025 include the following advancements and trends:

### 1. **AI Model Efficiency and Accessibility**
- Inference costs for AI systems like GPT-3.5 dropped by over 280-fold between 2022 and 2024, with GPT-3.5 costing $0.07 per million tokens in 2024 compared to $20 in 2022 ([stanford.edu](https://hai.stanford.edu/ai-index/2025-ai-index-report), [ieee.org](https://spectrum.ieee.org/ai-index-2025)).
- Hardware costs declined by 30% annually, and energy efficiency improved by 40% each year, making AI more affordable and scalable ([stanford.edu](https://hai.stanford.edu/ai-index/2025-ai-index-report)).

### 2. **AI in Healthcare and Medicine**
- FDA approved 223 AI-enabled medical devices by 2023, including tools for echocardiography and disease prediction ([stanford.edu](http
...
```


## Installation

### 1. Clone the Repository

```bash
git clone https://
cd reka-terminal-tools
```

### 2. Configure Your API Key

Create the configuration directory and store your Reka API key

- Go to the [Reka Platform dashboard](https://link.reka.ai/free)
- Open the API Keys section on the left
- Create a new key and copy it to your environment

  ```bash
  mkdir -p ~/.config/reka
  echo 'your-api-key-here' > ~/.config/reka/api_key
  chmod 600 ~/.config/reka/api_key
  ```

### 3. Install the Alias

Run the alias installer script:

```bash
./reka-aliases.sh
```

This will add the `?` and `??` aliases to your `.zshrc` or `.bashrc` file depending on your shell.

## Requirements

- **curl**: For making API requests
- **jq** (optional): For pretty JSON parsing

  ```bash
  brew install jq
  ```

## Troubleshooting

### "Permission denied" when running scripts

Make the scripts executable:

```bash
chmod +x reka-chat.sh reka-research.sh reka-aliases.sh
```

### Alias not working

Reload your shell configuration:

```bash
source ~/.zshrc  # or ~/.bashrc
```

## References

- [Docs: Reka API](https://docs.reka.ai/)
- [Discord](https://link.reka.ai/discord)

## 🤝 Contributions

If you find a bug or would like to add a feature, please read our [Code of Conduct](CODE_OF_CONDUCT.md) and the [Contributing Guide](CONTRIBUTING.md).

Feel free to open an issue or submit a PR—feedback and improvements are welcome.
