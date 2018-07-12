{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "decimal-literals";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "(@) jsagemue \$ uni-koeln.de";
        author = "Justus Sagemüller";
        homepage = "https://github.com/leftaroundabout/decimal-literals";
        url = "";
        synopsis = "Preprocessing decimal literals more or less as they are (instead of via fractions)";
        description = "";
        buildType = "Simple";
      };
      components = {
        "decimal-literals" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.decimal-literals
            ];
          };
        };
      };
    }