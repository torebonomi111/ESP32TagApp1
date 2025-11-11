#!/usr/bin/env sh
##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# Add default JVM options here if desired
DEFAULT_JVM_OPTS=""

# Find java
if [ -n "$JAVA_HOME" ] ; then
    JAVA_EXE="$JAVA_HOME/bin/java"
    if [ ! -x "$JAVA_EXE" ] ; then
        echo "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME" >&2
        exit 1
    fi
else
    JAVA_EXE="java"
    which java >/dev/null 2>&1 || {
        echo "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH." >&2
        exit 1
    }
fi

# Locate the gradle wrapper jar
DIRNAME=`dirname "$0"`
CLASSPATH="$DIRNAME/gradle/wrapper/gradle-wrapper.jar"

# Execute Gradle
exec "$JAVA_EXE" $DEFAULT_JVM_OPTS -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
