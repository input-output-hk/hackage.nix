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
      identifier = { name = "rdioh"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Aditya Bhargava <aditya at wefoundland.com>";
      author = "Aditya Bhargava";
      homepage = "";
      url = "";
      synopsis = "A Haskell wrapper for Rdio's API.";
      description = "This library implements methods for Rdio's API.\nIt supports 2-legged and 3-legged OAuth.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."hoauth" or (errorHandler.buildDepError "hoauth"))
          (hsPkgs."urlencoded" or (errorHandler.buildDepError "urlencoded"))
          ];
        buildable = true;
        };
      };
    }