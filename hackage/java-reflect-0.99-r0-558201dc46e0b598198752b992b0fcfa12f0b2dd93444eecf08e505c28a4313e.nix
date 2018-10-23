{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "java-reflect";
        version = "0.99";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "Tools for reflecting on Java classes.";
      description = "Tools for reflecting on Java classes.";
      buildType = "Simple";
    };
    components = {
      "java-reflect" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.java-bridge)
          (hsPkgs.containers)
          (hsPkgs.hx)
        ];
      };
    };
  }