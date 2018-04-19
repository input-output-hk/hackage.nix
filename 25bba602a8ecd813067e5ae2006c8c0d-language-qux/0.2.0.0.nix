{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "language-qux";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "public@hjwylde.com";
        author = "Henry J. Wylde";
        homepage = "https://github.com/qux-lang/language-qux";
        url = "";
        synopsis = "Utilities for working with the Qux language";
        description = "Qux is an experimental language developed from the ground up with the aim of static\ncompile time verification. This package provides tools for working with it (parsing,\ncompiling, pretty printing and type checking).";
        buildType = "Simple";
      };
      components = {
        language-qux = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.indents
            hsPkgs.llvm-general-pure
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.transformers
          ];
        };
      };
    }