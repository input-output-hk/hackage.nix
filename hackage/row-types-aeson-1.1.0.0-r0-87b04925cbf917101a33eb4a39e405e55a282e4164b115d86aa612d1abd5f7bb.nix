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
      identifier = { name = "row-types-aeson"; version = "1.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "dwincort@gmail.com";
      author = "Daniel Winograd-Cort";
      homepage = "https://github.com/dwincort/row-types";
      url = "";
      synopsis = "aeson instances for Open Records and Variants";
      description = "This package is a small extension to the row-types library\nthat includes aeson instances for row-types objects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }