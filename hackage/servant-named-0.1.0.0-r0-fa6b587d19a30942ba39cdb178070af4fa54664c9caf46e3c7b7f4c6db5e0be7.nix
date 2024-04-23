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
      identifier = { name = "servant-named"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Ben Weitzman";
      maintainer = "benweitzman@gmail.com";
      author = "Ben WEitzman";
      homepage = "https://github.com/bemweitzman/servant-named#readme";
      url = "";
      synopsis = "Add named endpoints to servant";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
        ];
        buildable = true;
      };
      tests = {
        "servant-named-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."servant-named" or (errorHandler.buildDepError "servant-named"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (errorHandler.buildDepError "hspec-wai"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          ];
          buildable = true;
        };
      };
    };
  }