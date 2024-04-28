
#You ID: 5184511003
#Chat ID: 5184511003
#orwarded from: 6823411868


TELEGRAM_TOKEN="6823411868:AAHms130T-e4piJw1OK7UKOHl8Wv0_k3CIs"
TELEGRAM_CHAT_ID="5184511003"

BOT_URL="https://api.telegram.org/bot${TELEGRAM_TOKEN}/sendMessage"

#BOT_URL=https://api.telegram.org/bot6823411868:AAHms130T-e4piJw1OK7UKOHl8Wv0_k3CIs/sendMessage

PARSE_MODE="Markdown"

send_msg () {
    curl -s -X POST ${BOT_URL} -d chat_id=$TELEGRAM_CHAT_ID \
        -d text="$1" -d parse_mode=${PARSE_MODE}
}

send_msg "
Teste Telegram
"
