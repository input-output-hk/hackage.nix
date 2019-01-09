{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hx"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "Utility functions that some may feel are missing from Prelude and base.";
      description = "Utility functions that some may feel are missing from Prelude and base.\n\nSome functions are taken from the package @hinduce-missingh@, which was\nwritten by Robert Hensing and published under the BSD 3-clause license.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }