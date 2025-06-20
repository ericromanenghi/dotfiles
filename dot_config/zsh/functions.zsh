# Custom Functions
# Add your daily helper functions here

# Claude setup function - configures authentication and environment for Claude
claude_setup() {
        gcloud auth application-default login;
        gcloud auth application-default set-quota-project progsys-genai-198685;
        export ANTHROPIC_VERTEX_PROJECT_ID="progsys-genai-198685";
        export CLAUDE_CODE_USE_VERTEX=1;
        export CLOUD_ML_REGION="us-east5";
}

# Claude wrapper function - runs setup then executes claude command
claude() {
        claude_setup;
        echo "claude_setup() complete. Unsetting the function to allow original 'claude' to run directly."
        unset -f claude

        # Now, call the original claude.
        # Since the function is unset, the shell will find the executable in PATH.
        claude "$@"
}

