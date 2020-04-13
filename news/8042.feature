Add CLI options for enhancing requests with HTTP headers

-H, --header <key:val>      HTTP header to include in all requests. This option can be used multiple times.
--host-headers <json>       Per-host HTTP header JSON configuration. Format is '{"host": {"Header": "Value"}}'

Example:

```
pip install \
  --index-url http://pypi.index/simple/       --trusted-host http://pypi.index \
  --extra-index-url http://pypi.extra/simple/ --trusted-host http://pypi.extra \
  -H 'X-Spam: This will be sent to both pypi.index and pypi.extra' \
  --host-headers '{"pypi.index": {'X-Secret': 'This will only be sent to pypi.index'}}'
  fizz==1.2.3
```
