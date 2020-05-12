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
      identifier = { name = "texts"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2013 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "User-facing operations for dealing with texts";
      description = "Common operations for different kinds of texts, including English-specific operations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."lists" or (errorHandler.buildDepError "lists"))
          ];
        buildable = true;
        };
      };
    }