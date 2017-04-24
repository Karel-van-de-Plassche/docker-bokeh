#!/bin/bash -e
exec /usr/local/bin/bokeh serve \
  --port $BOKEH_PORT \
  --log-level $BOKEH_LOG_LEVEL $BOKEH_APP_PATH \
  --allow-websocket-origin $BOKEH_EXTERNAL_ADDRESS
