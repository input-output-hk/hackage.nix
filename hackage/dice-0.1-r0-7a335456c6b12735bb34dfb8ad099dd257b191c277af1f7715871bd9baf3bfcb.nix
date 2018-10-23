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
        name = "dice";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "";
      url = "";
      synopsis = "Simplistic D&D style dice-rolling system.";
      description = "Simplistic D&D style dice-rolling system.";
      buildType = "Simple";
    };
    components = {
      "dice" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random-fu)
          (hsPkgs.parsec)
          (hsPkgs.transformers)
        ];
      };
      exes = { "dice" = {}; };
    };
  }