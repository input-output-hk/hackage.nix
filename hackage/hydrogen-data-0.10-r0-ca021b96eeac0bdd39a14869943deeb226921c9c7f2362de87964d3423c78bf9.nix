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
        name = "hydrogen-data";
        version = "0.10";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "julian@scravy.de";
      author = "Julian Fleischer";
      homepage = "https://scravy.de/hydrogen-data/";
      url = "";
      synopsis = "Hydrogen Data";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hydrogen-data" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hydrogen-prelude)
          (hsPkgs.hydrogen-parsing)
          (hsPkgs.hydrogen-syntax)
          (hsPkgs.nicify)
          (hsPkgs.parsec)
          (hsPkgs.uuid)
        ];
      };
    };
  }