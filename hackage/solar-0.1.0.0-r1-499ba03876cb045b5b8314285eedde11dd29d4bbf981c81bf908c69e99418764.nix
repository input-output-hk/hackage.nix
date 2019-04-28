{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "solar"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Paul Ogris";
      maintainer = "paul@tsahyt.com";
      author = "Paul Ogris";
      homepage = "https://github.com/tsahyt/solar#readme";
      url = "";
      synopsis = "Simple library for solar calculations";
      description = "Simple library for solar calculations, to determine sunset, sunrise, solar noon, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.time) ]; };
      };
    }