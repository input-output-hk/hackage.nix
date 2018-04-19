{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "bed-and-breakfast";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        homepage = "";
        url = "";
        synopsis = "Efficient Matrix operations in 100% Haskell.";
        description = "Efficient Matrix operations in 100% Haskell.";
        buildType = "Simple";
      };
      components = {
        bed-and-breakfast = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }