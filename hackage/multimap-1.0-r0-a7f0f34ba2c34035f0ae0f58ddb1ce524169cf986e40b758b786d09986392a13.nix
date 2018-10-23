{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "multimap";
        version = "1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "http://hub.darcs.net/scravy/strings";
      url = "";
      synopsis = "A multimap.";
      description = "This is a simple implementation of a multimap, based on \"Data.Map\".";
      buildType = "Simple";
    };
    components = {
      "multimap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }