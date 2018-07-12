{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "stringbuilder";
          version = "0.5.1";
        };
        license = "MIT";
        copyright = "(c) 2011-2018 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "";
        url = "";
        synopsis = "A writer monad for multi-line string literals";
        description = "<https://github.com/sol/stringbuilder#readme>";
        buildType = "Simple";
      };
      components = {
        "stringbuilder" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.stringbuilder
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }