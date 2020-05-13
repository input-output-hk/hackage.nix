{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "diagrams-boolean"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Kristof Bastiaensen (2015)";
      maintainer = "Kristof Bastiaensen";
      author = "Kristof Bastiaensen";
      homepage = "";
      url = "";
      synopsis = "/deprecated/, part of diagrams-contrib since 1.4";
      description = "set operations (union, intersection, difference and exclusion) on paths in Diagrams.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."cubicbezier" or (errorHandler.buildDepError "cubicbezier"))
          ];
        buildable = true;
        };
      };
    }