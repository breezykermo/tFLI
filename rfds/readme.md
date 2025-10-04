# Requests for discussion
For more information on the function and format of rfds, see [rfd.0](./0.what-is-an-rfd.org).

## Building rfds 
Rfds are written in Orgmode and then compiled to both PDF and HTML through Typst.
To install the compilation environment, first ensure that you have [Nix](https://nixos.org/download/) installed on your computer.
Then run:

```bash
nix develop
```

This might take a while the first time, as Nix is installing typst from upstream and all the other necessary software.

Once you have a shell prompt, you can run compile commands with [just](https://github.com/casey/just).
The default command compiles all rfds to both PDF and HTML.

```fish
# compile all rfds to PDF/HTML
just 

# compile a single rfd to PDF/HTML
just compile ./0.what-is-an-rfd.org  ```
