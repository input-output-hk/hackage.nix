{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "fresh";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Lazar <lazar6@illinois.edu>";
        author = "David Lazar";
        homepage = "https://github.com/davidlazar/fresh";
        url = "";
        synopsis = "Introduce fresh variables into Haskell source code";
        description = "This library provides functions for converting fresh\nvariables of the form @Ident \\\"\\@foo\\\"@ into concrete\nvariables that are globally unique across an AST.";
        buildType = "Simple";
      };
      components = {
        "fresh" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.haskell-src-exts
            hsPkgs.syb
          ];
        };
      };
    }