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
      identifier = { name = "uber"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tarun <tj.joshi7@gmail.com>";
      author = "Tarun";
      homepage = "https://github.com/byteally/webapi-uber.git";
      url = "";
      synopsis = "Uber client for Haskell";
      description = "Bindings for Uber API";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."webapi" or (errorHandler.buildDepError "webapi"))
        ];
        buildable = true;
      };
      tests = {
        "uber-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."uber" or (errorHandler.buildDepError "uber"))
          ];
          buildable = true;
        };
      };
    };
  }