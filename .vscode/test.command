#!/bin/sh

UNITY_EXECUTABLE="/Applications/Unity/Unity.app/Contents/MacOS/Unity"
PROJECT_FOLDER="$1"
RESULTS_FILENAME="$2"
RESULTS_FILEPATH="$PROJECT_FOLDER/$RESULTS_FILENAME"

echo "Testing Unity project: $PROJECT_FOLDER"
echo "Running Unity.app (batch mode, run tests)..."

time \
"$UNITY_EXECUTABLE" \
-batchmode -nographics -quit \
-projectPath "$PROJECT_FOLDER" \
-runTests \
-testResults "$RESULTS_FILEPATH" \
-testPlatform editmode

echo ""
echo "Editor log: ~/Library/Logs/Unity/Editor.log"
echo "Results xml: $RESULTS_FILEPATH"