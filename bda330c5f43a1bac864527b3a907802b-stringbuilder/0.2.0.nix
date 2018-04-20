{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "stringbuilder";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "(c) 2011, 2012 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "";
        url = "";
        synopsis = "A monadic builder for multi-line string literals";
        description = "<https://github.com/sol/stringbuilder#readme>";
        buildType = "Simple";
      };
      components = {
        stringbuilder = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }