{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "SpaceInvaders";
          version = "0.4.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ivan Perez <ivan.perez@keera.co.uk>";
        author = "Henrik Nilsson, Antony Courtney";
        homepage = "http://www.haskell.org/yampa/";
        url = "";
        synopsis = "Video game";
        description = "Video game implemented in Yampa.";
        buildType = "Simple";
      };
      components = {
        exes = {
          spaceInvaders = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.random
              hsPkgs.HGL
              hsPkgs.Yampa
            ];
          };
        };
      };
    }