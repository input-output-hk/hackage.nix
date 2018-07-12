{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "SFML";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jeannekamikaze@gmail.com";
        author = "Marc Sunet";
        homepage = "https://github.com/jeannekamikaze/SFML";
        url = "";
        synopsis = "SFML bindings";
        description = "Low level bindings for SFML 2.0.";
        buildType = "Simple";
      };
      components = {
        "SFML" = {
          depends  = [ hsPkgs.base ];
          libs = [
            pkgs.csfml-window
            pkgs.csfml-system
            pkgs.csfml-graphics
            pkgs.csfml-network
            pkgs.csfml-audio
          ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }