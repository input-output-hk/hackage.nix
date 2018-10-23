{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "constructive-algebra";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mortberg@student.chalmers.se";
      author = "Anders Mortberg, Bassel Mannaa";
      homepage = "";
      url = "";
      synopsis = "A library of constructive algebra.";
      description = "A library of constructive algebra.";
      buildType = "Simple";
    };
    components = {
      "constructive-algebra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }