# Print environment information for debugging

DESCRIPTION=$1
if [ -z "$DESCRIPTION" ]; then
  echo >&2 "Usage: $0 <description>"
  exit 1
fi

cat << EOF >> /debug_output
**** '$DESCRIPTION' ***

SHELL: $SHELL

*********************
EOF
