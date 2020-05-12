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
      identifier = { name = "bdo"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Update CSS in the browser without reloading the page.";
      description = "Update CSS in the browser without reloading the page.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bdo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."url" or (errorHandler.buildDepError "url"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            ];
          buildable = true;
          };
        };
      };
    }