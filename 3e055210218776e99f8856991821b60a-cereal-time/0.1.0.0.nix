{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cereal-time";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Al Zohali <zohl@fmap.me>";
        author = "Al Zohali";
        homepage = "";
        url = "";
        synopsis = "Serialize instances for types from `time` package.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "cereal-time" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.time
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.cereal
              hsPkgs.cereal-time
              hsPkgs.hspec
              hsPkgs.time
            ];
          };
        };
      };
    }