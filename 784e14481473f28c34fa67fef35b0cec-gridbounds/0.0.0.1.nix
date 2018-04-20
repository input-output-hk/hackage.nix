{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gridbounds";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "firas@zaidan.de";
        author = "Firas Zaidan";
        homepage = "https://github.com/zaidan/gridbounds#readme";
        url = "";
        synopsis = "Collision detection for GridBox";
        description = "This package adds collision detection to GridBox. It is based on Earclipper and GJK.";
        buildType = "Simple";
      };
      components = {
        gridbounds = {
          depends  = [
            hsPkgs.base
            hsPkgs.gridbox
            hsPkgs.earclipper
            hsPkgs.gjk
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.gridbox
              hsPkgs.earclipper
              hsPkgs.gjk
              hsPkgs.gridbounds
              hsPkgs.hspec
            ];
          };
        };
      };
    }