{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-names";
          version = "0.6.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Philipp Schuster";
        author = "Philipp Schuster, Roman Cheplyaka, Lennart Augustsson";
        homepage = "http://documentup.com/haskell-suite/haskell-names";
        url = "";
        synopsis = "Name resolution library for Haskell";
        description = "This package takes modules parsed with `haskell-src-exts`, resolves used names and annotates the parsed module with scoping information.";
        buildType = "Simple";
      };
      components = {
        "haskell-names" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src-exts
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.uniplate
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.data-lens-light
            hsPkgs.traverse-with-class
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-src-exts
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.filemanip
              hsPkgs.pretty-show
              hsPkgs.traverse-with-class
              hsPkgs.haskell-names
            ];
          };
        };
      };
    }