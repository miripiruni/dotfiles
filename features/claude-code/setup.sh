case $OSTYPE in darwin*)
    brew install --cask claude-code
esac

case $OSTYPE in linux*)
    curl -fsSL https://claude.ai/install.sh | bash
esac

which claude
claude --version

