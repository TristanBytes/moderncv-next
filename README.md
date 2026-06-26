# moderncv-next

Small opinionated layer on top of `moderncv` for a clean, developer-friendly CV workflow.

## Build the example

```bash
make image
make pdf
```

The generated PDF is written to `output/example.pdf`.

## Scope

moderncv-next is intentionally small.

It does not reimplement moderncv.  
It provides:

- Dockerized LaTeX builds
- curated moderncv examples
- small helper macros
- reproducible resume generation

## Example

```latex
\usepackage{../styles/moderncv-next}

\cvnextprofile{
Senior Software Engineer with experience in embedded systems.
}
