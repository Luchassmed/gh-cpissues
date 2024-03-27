#!/bin/bash

# Source shunit2
. ./shunit2

# Function to test
checkLabelExists() {
    local label="$1"
    local labels=("bug" "feature" "enhancement")
    for l in "${labels[@]}"; do
        if [ "$l" == "$label" ]; then
            return 0
        fi
    done
    return 1
}

# Test function
testCheckLabelExists() {
    assertTrue "Label 'bug' should exist" checkLabelExists "bug"
    assertFalse "Label 'unknown' should not exist" checkLabelExists "unknown"
}

# Setup and teardown functions
oneTimeSetUp() {
    # Any setup needed before all tests
}

oneTimeTearDown() {
    # Any cleanup needed after all tests
}

# Run shunit2
