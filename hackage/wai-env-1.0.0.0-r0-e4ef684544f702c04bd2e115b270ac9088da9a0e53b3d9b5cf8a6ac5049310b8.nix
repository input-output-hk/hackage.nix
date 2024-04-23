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
      identifier = { name = "wai-env"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Alexander C. Mingoia";
      maintainer = "alex@alexmingoia.com";
      author = "Alex Mingoia";
      homepage = "https://github.com/alexmingoia/wai-env#readme";
      url = "";
      synopsis = "WAI middleware to parameterize requests with environment. ";
      description = "WAI middleware to parameterize requests with environment, and retrieve environment from requests.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ];
        buildable = true;
      };
    };
  }