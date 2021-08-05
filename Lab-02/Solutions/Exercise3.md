## Bicep Linter Configuration

Create a JSON configuration file `bicepconfig.json` and save to a directory where the configuration will take effect.  bicepconfig.json can be placed alongside your templates in the same directory. The closest configuration file found up the tree will be used.

```json
{
    "analyzers": {
        "core": {
            "verbose": false,
            "enabled": true,
            "rules": {
                "no-unused-params": {
                    "level": "error"
                },
                "no-unused-vars": {
                    "level": "error"
                },
                "simplify-interpolation": {
                    "level": "error"
                },
                "prefer-interpolation": {
                    "level": "error"
                },
                "secure-parameter-default": {
                    "level": "error"
                },
                "no-hardcoded-env-urls": {
                    "level": "error"
                }
            }
        }
    }
}
```