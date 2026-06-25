# moderncv-bremer

Small opinionated layer on top of `moderncv` for a clean, developer-friendly CV workflow.

## Build the example

```bash
make image
make pdf
```

The generated PDF is written to `output/example.pdf`.

## Use from a private CV repository

Recommended layout:

```text
cv/
├── cv.tex
├── data/
├── sections/
└── template/moderncv-bremer/   # git submodule
```

Add as submodule:

```bash
git submodule add git@github.com:mf-gitting/moderncv-bremer.git template/moderncv-bremer
```

Then in your private `cv.tex`:

```latex
\input{template/moderncv-bremer/styles/bremer.tex}
```
