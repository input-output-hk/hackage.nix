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
      identifier = { name = "data-fresh"; version = "0.2013.250"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Stijn van Drongelen";
      maintainer = "Stijn van Drongelen <rhymoid@gmail.com>";
      author = "Stijn van Drongelen";
      homepage = "";
      url = "";
      synopsis = "An interface for generating fresh values";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }