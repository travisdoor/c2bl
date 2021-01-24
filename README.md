# c2bl

Converter from C library headers to BL wrappers.

## Build from source code

This tool is currently available only on Windows. 

```bash
blc -release-fast -b
```



## Known issues
* External variables are not supported since those are not so common in C library APIs.
* Expansion of macros is very tricky in clang, only basic stringification is supported
  and can be enabled by `--translate-macros` flag.