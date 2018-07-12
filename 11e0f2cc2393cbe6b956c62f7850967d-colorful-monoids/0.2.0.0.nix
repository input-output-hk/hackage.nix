{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "colorful-monoids";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "2017 Daniel Mendler";
        maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
        author = "Daniel Mendler <mail@daniel-mendler.de>";
        homepage = "https://github.com/minad/colorful-monoids#readme";
        url = "";
        synopsis = "Styled console text output using ANSI escape sequences.";
        description = "Styled console text output using ANSI escape sequences.";
        buildType = "Simple";
      };
      components = {
        "colorful-monoids" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.colorful-monoids
            ];
          };
        };
      };
    }