{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hx";
          version = "0.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "julian.fleischer@fu-berlin.de";
        author = "Julian Fleischer";
        homepage = "";
        url = "";
        synopsis = "Haskell extras (missing utility functions).";
        description = "Utility functions that some may feel are missing from Prelude and base.\n\nSome functions are taken from the package @hinduce-missingh@, which was\nwritten by Robert Hensing and published under the BSD 3-clause license.";
        buildType = "Simple";
      };
      components = {
        hx = {
          depends  = [ hsPkgs.base ];
        };
      };
    }