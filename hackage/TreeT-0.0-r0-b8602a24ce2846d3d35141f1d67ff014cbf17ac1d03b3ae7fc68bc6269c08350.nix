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
      identifier = { name = "TreeT"; version = "0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "gopinath@eecs.oregonstate.edu";
      author = "Rahul Gopinath";
      homepage = "";
      url = "";
      synopsis = "Transformer for Data.Tree ";
      description = "This library implements a transformer for the Data.Tree package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }