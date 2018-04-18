{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "crackNum";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Levent Erkok";
        maintainer = "erkokl@gmail.com";
        author = "Levent Erkok";
        homepage = "";
        url = "";
        synopsis = "Crack various integer/floating-point data formats";
        description = "Crack various integer/floating-point data formats;\nHP/SP/DP floats and various sized words and integers.";
        buildType = "Simple";
      };
      components = {
        crackNum = {
          depends  = [
            hsPkgs.base
            hsPkgs.ieee754
            hsPkgs.data-binary-ieee754
          ];
        };
        exes = {
          crackNum = {
            depends  = [
              hsPkgs.base
              hsPkgs.ieee754
              hsPkgs.data-binary-ieee754
            ];
          };
        };
      };
    }