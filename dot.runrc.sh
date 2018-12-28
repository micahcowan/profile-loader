### Run user profile-setup scripts found in ~/.rc-enabled/ (or
#   wherever specified in RCDIR)

OLDPWDSAVE=$OLDPWD
PWDSAVE=$PWD

if test -d "${RCDIR:=~/.rc-enabled}"; then
    cd "$RCDIR"
    for CURRENT_RCSCRIPT in *
    do
            [ "${CURRENT_RCSCRIPT%\~}" != "$CURRENT_RCSCRIPT" ] && continue
            . "./$CURRENT_RCSCRIPT"
    done
fi

cd "$OLDPWDSAVE"
cd "$PWDSAVE"
unset OLDPWDSAVE
unset PWDSAVE
unset CURRENT_RCSCRIPT
# leave RCDIR set
