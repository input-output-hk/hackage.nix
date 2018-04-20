{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gjk2d";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Suzumiya";
        maintainer = "suzumiyasmith@gmail.com";
        author = "Suzumiya";
        homepage = "https://github.com/suzumiyasmith/gjk2d#readme";
        url = "";
        synopsis = "";
        description = "Yet another 2D GJK collision dection algorithm with Linear";
        buildType = "Simple";
      };
      components = {
        gjk2d = {
          depends  = [
            hsPkgs.base
            hsPkgs.linear
          ];
        };
        tests = {
          gjk2d-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.linear
              hsPkgs.gjk2d
            ];
          };
        };
      };
    }