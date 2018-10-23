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
        name = "diagrams-boolean";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Kristof Bastiaensen (2015)";
      maintainer = "Kristof Bastiaensen";
      author = "Kristof Bastiaensen";
      homepage = "";
      url = "";
      synopsis = "boolean operations on Diagrams paths";
      description = "set operations (union, intersection, difference and exclusion) on paths in Diagrams.";
      buildType = "Simple";
    };
    components = {
      "diagrams-boolean" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.diagrams-lib)
          (hsPkgs.cubicbezier)
        ];
      };
    };
  }