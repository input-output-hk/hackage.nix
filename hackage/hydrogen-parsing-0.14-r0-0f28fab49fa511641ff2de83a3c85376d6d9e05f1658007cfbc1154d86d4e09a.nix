{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "hydrogen-parsing";
        version = "0.14";
      };
      license = "MIT";
      copyright = "";
      maintainer = "julian@scravy.de";
      author = "Julian Fleischer";
      homepage = "https://scravy.de/hydrogen-parsing/";
      url = "";
      synopsis = "Hydrogen Parsing Utilities";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hydrogen-parsing" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hydrogen-prelude)
          (hsPkgs.parsec)
        ];
      };
    };
  }