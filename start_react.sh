
#! /bin/sh

echo "Starting React Project"

PRO_PATH="Documents/Projects/VisionDev/vision-dev"

cd "$PRO_PATH"
echo "@ $PRO_PATH"

OPEN_VSCODE="code ."
exec $OPEN_VSCODE

SET_WATCHERS_MAX="sudo sysctl fs.inotify.max_user_watches=5444"
exec $SET_WATCHERS_MAX

#echo < "os18092002"

START_REACT="npm run start"
exec $START_REACT



