{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "literals";
          version = "1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        homepage = "";
        url = "";
        synopsis = "Non-overloaded functions for concrete literals.";
        description = "Non-overloaded functions for concrete literals.";
        buildType = "Simple";
      };
      components = {
        "literals" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }