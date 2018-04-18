{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "java-bridge-extras";
          version = "0.9";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        homepage = "";
        url = "";
        synopsis = "Utilities for working with the java-bridge package.";
        description = "Utilities for working with the java-bridge package.";
        buildType = "Simple";
      };
      components = {
        java-bridge-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.java-bridge
            hsPkgs.transformers
          ];
        };
      };
    }