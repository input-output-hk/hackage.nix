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
      identifier = { name = "protolude-lifted"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Piotr Bogdan";
      maintainer = "ppbogdan@gmail.com";
      author = "Piotr Bogdan";
      homepage = "https://github.com/pbogdan/protolude-lifted";
      url = "";
      synopsis = "Protolude with lifted-base and lifted-async.";
      description = "Protolude with lifted-base and lifted-async.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
        ];
        buildable = true;
      };
    };
  }