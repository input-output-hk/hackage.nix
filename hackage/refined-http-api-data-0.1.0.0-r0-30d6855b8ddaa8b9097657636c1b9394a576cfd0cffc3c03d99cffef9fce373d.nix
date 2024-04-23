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
      identifier = { name = "refined-http-api-data"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright © 2019 Brandon Hamilton";
      maintainer = "brandon.hamilton@gmail.com";
      author = "Brandon Hamilton";
      homepage = "";
      url = "";
      synopsis = "http-api-data instances for refined types";
      description = "Orphan instances of Web.HttpApiData for refinement types";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }