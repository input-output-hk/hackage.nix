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
        name = "hydrogen-syntax";
        version = "0.11";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "julian@scravy.de";
      author = "Julian Fleischer";
      homepage = "https://scravy.de/hydrogen-syntax/";
      url = "";
      synopsis = "Hydrogen Syntax";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hydrogen-syntax" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hydrogen-prelude)
          (hsPkgs.hydrogen-parsing)
          (hsPkgs.nicify)
          (hsPkgs.parsec)
          (hsPkgs.uuid)
        ];
      };
    };
  }