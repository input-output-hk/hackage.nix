{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "format-numbers";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
        maintainer = "mail@athiemann.net";
        author = "Alexander Thiemann";
        homepage = "https://github.com/agrafix/format-numbers#readme";
        url = "";
        synopsis = "Various number formatting functions";
        description = "Various number formatting functions";
        buildType = "Simple";
      };
      components = {
        "format-numbers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.hspec
            ];
          };
        };
      };
    }