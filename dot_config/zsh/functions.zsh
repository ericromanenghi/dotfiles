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

# Devpod creation helpers
dvp-android() {
    local name="android"
    local flavor="android"
    
    # Parse arguments to allow name override
    while [[ $# -gt 0 ]]; do
        case $1 in
            --name)
                name="$2"
                shift 2
                ;;
            *)
                # Pass through other arguments
                local extra_args="$extra_args $1"
                shift
                ;;
        esac
    done
    
    devpod create --flavor "$flavor" --name "$name" $extra_args
}

dvp-java() {
    local name="java"
    local flavor="java"
    
    # Parse arguments to allow name override
    while [[ $# -gt 0 ]]; do
        case $1 in
            --name)
                name="$2"
                shift 2
                ;;
            *)
                # Pass through other arguments
                local extra_args="$extra_args $1"
                shift
                ;;
        esac
    done
    
    devpod create --flavor "$flavor" --name "$name" $extra_args
}


