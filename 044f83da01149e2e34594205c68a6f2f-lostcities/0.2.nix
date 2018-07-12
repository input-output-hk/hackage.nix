{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "lostcities";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) 2009 Pedro Vasconcelos";
        maintainer = "pbv@ncc.up.pt";
        author = "Pedro Vasconcelos";
        homepage = "http://www.ncc.up.pt/~pbv/stuff/lostcities";
        url = "";
        synopsis = "An implementation of an adictive two-player card game";
        description = "Based on the card game designed by Reiner Knizia.\nIn this implementation you play against the computer.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "lostcities" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.mtl
              hsPkgs.wx
              hsPkgs.wxcore
            ];
          };
        };
      };
    }