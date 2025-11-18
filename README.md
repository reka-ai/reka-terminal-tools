# Reka Terminal Tools

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

- Go to the Reka Platform dashboard
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