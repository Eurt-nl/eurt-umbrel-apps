# Separate per-install secrets for the FreqUI/REST API, consumed by the
# hooks/pre-start bootstrap config. Must stay stable across restarts/updates
# so existing sessions/config don't get invalidated.
export APP_FREQTRADE_JWT_SECRET_KEY="$(derive_entropy "${app_entropy_identifier}-jwt-secret-key")"
export APP_FREQTRADE_WS_TOKEN="$(derive_entropy "${app_entropy_identifier}-ws-token")"
