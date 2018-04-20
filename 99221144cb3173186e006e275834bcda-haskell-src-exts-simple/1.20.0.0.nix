{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-src-exts-simple";
          version = "1.20.0.0";
        };
        license = "MIT";
        copyright = "2016, Bertram Felgenhauer";
        maintainer = "Bertram Felgenhauer <int-e@gmx.de>";
        author = "Bertram Felgenhauer";
        homepage = "https://github.com/int-e/haskell-src-exts-simple";
        url = "";
        synopsis = "A simplified view on the haskell-src-exts AST";
        description = "This package provides a shim for haskell-src-exts (HSE), exposing the\nsame AST but without annotations, using ghc's pattern synonyms.\n\nSee README.md for further information and compatibility considerations.";
        buildType = "Simple";
      };
      components = {
        haskell-src-exts-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src-exts
          ];
        };
      };
    }