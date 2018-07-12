{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "cpuperf";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<dons@cse.unsw.edu.au>";
        author = "Don Stewart";
        homepage = "";
        url = "";
        synopsis = "Modify the cpu frequency on OpenBSD systems";
        description = "cpuperf toggle the cpu frequency on OpenBSD systems between 0 and 100%.";
        buildType = "Custom";
      };
      components = {
        exes = {
          "cpuperf" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
            ];
          };
        };
      };
    }