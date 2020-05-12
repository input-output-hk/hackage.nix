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
      specVersion = "1.6";
      identifier = { name = "shapely-data"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "http://brandon.si/code/shapely-data/";
      url = "";
      synopsis = "Template haskell conversion of types to a \"structural form\" built from primitive sum, product, and unit types.";
      description = "This is an experimental package providing template haskell\ncode to convert to and from normal algebraic data types and a\nrepresentation using only haskell's primitive product, sum\nand unit types: (,), Either, and ().\n\nThis is something like light-weight Structural Typing.\n\nPlease send any comments along.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }