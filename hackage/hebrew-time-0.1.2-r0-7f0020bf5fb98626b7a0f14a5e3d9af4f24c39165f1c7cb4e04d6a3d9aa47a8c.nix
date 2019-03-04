{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hebrew-time"; version = "0.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "https://github.com/snoyberg/hebrew-time#readme";
      url = "";
      synopsis = "Hebrew dates and prayer times.";
      description = "Conversion to and from Hebrew dates.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.time) ]; };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.hebrew-time)
            (hsPkgs.hspec)
            (hsPkgs.time)
            ];
          };
        };
      };
    }