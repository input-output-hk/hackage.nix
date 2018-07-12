{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "EstProgress";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "info@alkalisoftware.net";
        author = "James Candy";
        homepage = "http://alkalisoftware.net";
        url = "";
        synopsis = "Methods for estimating the progress of functions";
        description = "Estimates the progress of a function as it executes, and displays a progress bar.";
        buildType = "Simple";
      };
      components = {
        "EstProgress" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.ansi-terminal
          ];
        };
      };
    }