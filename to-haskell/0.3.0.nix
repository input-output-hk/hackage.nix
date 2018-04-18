{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "to-haskell";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "https://github.com/conal/to-haskell";
        url = "";
        synopsis = "A type class and some utilities for generating Haskell code.";
        description = "A type class and some utilities for generating Haskell code.";
        buildType = "Simple";
      };
      components = {
        to-haskell = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.haskell-src-exts
          ];
        };
      };
    }