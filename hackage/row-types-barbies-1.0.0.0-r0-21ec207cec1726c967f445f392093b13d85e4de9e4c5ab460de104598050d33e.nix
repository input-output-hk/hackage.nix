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
      specVersion = "1.10";
      identifier = { name = "row-types-barbies"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "dwincort@gmail.com";
      author = "Daniel Winograd-Cort, Matthew Farkas-Dyck";
      homepage = "https://github.com/target/row-types";
      url = "";
      synopsis = "barbies instances for Open Records and Variants";
      description = "This package is a small extension to the row-types library\nthat includes barbies instances for row-types objects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."barbies" or (errorHandler.buildDepError "barbies"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }