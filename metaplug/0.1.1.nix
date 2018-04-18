{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "metaplug";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "austin@youareinferior.net";
        author = "Austin Seipp";
        homepage = "";
        url = "";
        synopsis = "a tiny ghc api wrapper";
        description = "a ghc-api wrapper, designed\nto make the api more transparent\nacross releases and offer eval and\nplugin esque facilities in the form\nof a simple, easy to modify library.";
        buildType = "Custom";
      };
      components = {
        metaplug = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.filepath
            hsPkgs.haskell98
            hsPkgs.Cabal
          ];
        };
      };
    }