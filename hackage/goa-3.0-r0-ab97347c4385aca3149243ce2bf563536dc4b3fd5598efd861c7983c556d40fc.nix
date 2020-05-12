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
      specVersion = "0";
      identifier = { name = "goa"; version = "3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "paolo@nemail.it";
      author = "Paolo Martini";
      homepage = "";
      url = "";
      synopsis = "GHCi bindings to lambdabot";
      description = "Offers an interface to be able to call Lambdabot commands within GHCi;\nthis is broken with recent Lambdabots.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }