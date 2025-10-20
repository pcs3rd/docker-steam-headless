
print_header "Configure Avahi"

if ([ "${MODE}" != "s" ] && [ "${MODE}" != "secondary" ]); then
    if [ "${ENABLE_AVAHI:-}" = "true" ]; then
        print_step_header "Enable avahi daempn"
        sed -i 's|^autostart.*=.*$|autostart=true|' /etc/supervisor.d/avahi.ini
    else
        print_step_header "Disable avahi daemon"
    fi
else
    print_step_header "Avahi not available in secondary mode"
fi

echo -e "\e[34mDONE\e[0m"



