{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haskell-menu";
          version = "0.2.1";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "jlamothe1980@gmail.com";
        author = "Jonathan Lamothe";
        homepage = "https://github.com/jlamothe/haskell-menu";
        url = "";
        synopsis = "A simple menu system for Haskell programs";
        description = "";
        buildType = "Simple";
      };
      components = {
        haskell-menu = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }