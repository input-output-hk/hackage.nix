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
        name = "bf-cata";
        version = "1.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "Arie Middelkoop";
      maintainer = "Arie Middelkoop <ariem@cs.uu.nl>";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
      url = "";
      synopsis = "";
      description = "Evaluation combinators for breadth-first evaluated catamorphisms";
      buildType = "Simple";
    };
    components = {
      "bf-cata" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
        ];
      };
    };
  }