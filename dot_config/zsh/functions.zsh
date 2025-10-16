# Custom Functions
# Add your daily helper functions here

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


