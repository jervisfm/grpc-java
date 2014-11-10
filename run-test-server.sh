#!/bin/bash -e
TARGET='Test Service Server'
TARGET_CLASS='com.google.net.stubby.testing.integration.TestServiceServer'
TARGET_ARGS="$@"

cd "`dirname "$0"`"/integration-testing
echo "[INFO] Running: $TARGET ($TARGET_CLASS $TARGET_ARGS)"
exec mvn -q -nsu compile exec:exec -Dcheckstyle.skip=true -DexampleClass="$TARGET_CLASS" -DargLine.example="$TARGET_ARGS"