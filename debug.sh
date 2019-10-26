# Print environment information for debugging

debug() {
  DESCRIPTION=$1
  if [ -z "$DESCRIPTION" ]; then
    echo >&2 "Usage: $0 <description>"
    exit 1
  fi

  case $- in
    *i*) IS_INTERACTIVE="interactive";;
    *) IS_INTERACTIVE="non-interactive";;
  esac

  IS_LOGIN=$(shopt -q login_shell && echo 'login' || echo 'non-login')

  cat << EOF >> /debug_output
**** '$DESCRIPTION' ***

SHELL: ${SHELL:-unknown}
$IS_INTERACTIVE
$IS_LOGIN
*********************
EOF
}
