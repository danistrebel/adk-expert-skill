# ADK Expert Skill: Knowledge Freshness Demo

This project is a simple demonstration of how **Agent Skills** can be used to keep an AI agent's knowledge current, even when the underlying libraries or documentation are rapidly changing.

## Overview

AI models are often trained on snapshots of data that may become outdated. For specialized and evolving toolkits like the **Agent Development Kit (ADK)**, maintaining "knowledge freshness" is critical for providing accurate guidance.

This project implements a self-updating skill that:
1.  **Defines a Skill:** Uses `SKILL.md` to provide specialized instructions and local context to the Gemini CLI.
2.  **Manages Local References:** Stores a curated set of documentation in the `references/` directory.
3.  **Automates Updates:** Uses a shell script (`update-references.sh`) to fetch the latest documentation from official sources.
4.  **Continuous Knowledge Refreshes:** Employs a GitHub Action to run the update script every 24 hours, ensuring the agent always has access to the most recent information.

## Project Structure

- `gemini-extension.json`: Defines the extension and points to the available skills.
- `skills/adk-expert/`:
    - `SKILL.md`: The expert instructions for the ADK agent.
    - `references/`: Local markdown and text files containing ADK documentation.
    - `scripts/update-references.sh`: A script that syncs the local references with upstream source repositories.
- `.github/workflows/update-references.yml`: Automates the update script execution.

## How it Works

When you activate the `adk-expert` skill in the Gemini CLI, the agent reads the local reference files. Because these files are updated daily by the GitHub Action, the agent can answer questions about the latest ADK features, API changes, and best practices that might have been released after its initial training.


## Disclaimer

This is not an official Google product.