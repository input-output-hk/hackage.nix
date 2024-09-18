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
      specVersion = "2.2";
      identifier = { name = "singletons-default"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2024 Eitan Chatav";
      maintainer = "eitan.chatav@gmail.com";
      author = "Eitan Chatav";
      homepage = "https://github.com/morphismtech/singletons-default#readme";
      url = "";
      synopsis = "An optional type with type level default";
      description = "Please see the README on GitHub at <https://github.com/morphismtech/singletons-default#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."singletons-base" or (errorHandler.buildDepError "singletons-base"))
        ];
        buildable = true;
      };
    };
  }