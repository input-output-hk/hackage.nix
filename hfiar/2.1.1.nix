{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hfiar";
          version = "2.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Fernando \"Brujo\" Benavides";
        maintainer = "greenmellon@gmail.com";
        author = "Fernando \"Brujo\" Benavides";
        homepage = "http://github.com/elbrujohalcon/hfiar";
        url = "http://code.haskell.org/hfiar";
        synopsis = "Four in a Row in Haskell!!";
        description = "The classical game, implemented with wxHaskell";
        buildType = "Custom";
      };
      components = {
        hfiar = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.mtl
            hsPkgs.eprocess
            hsPkgs.eprocess
          ];
        };
        exes = {
          hfiar = {
            depends  = [
              hsPkgs.wxcore
              hsPkgs.wxcore
              hsPkgs.wx
              hsPkgs.wx
            ];
          };
        };
      };
    }