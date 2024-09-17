#!/bin/bash

# *Variables*
TARGET_BRANCH="company-project"     # Replace with your target branch name
SOURCE_BRANCH="personal-ai-street-smart"     # Replace with the branch you are merging from
FILE_TO_KEEP1="./slack/slack.yaml"       # Replace with the path to the first file you want to keep
FILE_TO_KEEP2="./slack/deploy.cloudbuild.yaml"       # Replace with the path to the second file you want to keep

# *Step 2: Checkout Your Target Branch + Get the Current Commit Hash
git checkout $TARGET_BRANCH
CURRENT_COMMIT=$(git rev-parse HEAD)

# *Step 3: Merge the Original Branch*
git pull origin $SOURCE_BRANCH

# *Step 5: Verify Changes (Optional)*
echo "___The following files have been preserved: $FILE_TO_KEEP1 and $FILE_TO_KEEP2" 

# *Step 7: Push the Changes (if necessary)*
git push
echo "___Merge completed successfully!"
