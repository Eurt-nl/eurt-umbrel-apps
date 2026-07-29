# 32-byte AES-256 key for INSTATIC_SECRET_KEY (encrypts stored AI credentials
# and TOTP seeds). Must stay stable across restarts/updates or existing
# encrypted rows become unreadable.
export APP_INSTATIC_SECRET_KEY="$(openssl dgst -sha256 -binary <<< "$(derive_entropy "${app_entropy_identifier}-INSTATIC_SECRET_KEY")" | base64)"
