{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "feature-flags";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "SaneTracker";
        maintainer = "ian@iankduncan.com";
        author = "Ian Duncan";
        homepage = "https://github.com/iand675/feature-flags";
        url = "";
        synopsis = "A simple library for dynamically enabling and disabling functionality.";
        description = "A simple library for dynamically enabling and disabling functionality.";
        buildType = "Simple";
      };
      components = {
        feature-flags = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
      };
    }