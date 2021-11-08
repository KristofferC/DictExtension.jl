# DictExtension.jl

Do more with `Dict`s :school_satchel:

## Use

```jl
using DictExtension
```

### `convert_to_keyword_argument`

Convert `Dict{String, Any}` to `Dict{Symbol, Any}`

```jl
convert_to_keyword_argument(di)
```

### `merge`

Merge 2 `Dict`s recursively

```jl
DictExtension.merge(di1, di2)
```

### `summarize`

Print `Dict` summaries

```jl
summarize(di)
```

### `read`

Read `json` as `Dict`

```jl
DictExtension.read("path/to/a.json")
```

### `write`

Write `Dict` as `json`

```jl
DictExtension.write("path/to/a.json", di)
```

## Howdy :wave: :cowboy_hat_face:

To report a bug, request a feature, or leave a comment (about anything related to this repository), just [submit an issue](https://github.com/KwatMDPhD/DictExtension.jl/issues/new/choose).

---

Made by https://github.com/KwatMDPhD/PkgRepository.jl
