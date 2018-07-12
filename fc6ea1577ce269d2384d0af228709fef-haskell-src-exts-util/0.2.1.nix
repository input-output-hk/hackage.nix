{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-src-exts-util";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "All Rights Reserved";
        maintainer = "pepeiborra@gmail.com";
        author = "Neil Mitchell, Jose Iborra";
        homepage = "https://github.com/pepeiborra/haskell-src-exts-util";
        url = "";
        synopsis = "Helper functions for working with haskell-src-exts trees";
        description = "see README.md";
        buildType = "Simple";
      };
      components = {
        "haskell-src-exts-util" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.haskell-src-exts
            hsPkgs.transformers
            hsPkgs.uniplate
          ];
        };
      };
    }