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
      specVersion = "2.4";
      identifier = { name = "summer"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "2020 Samuel Schlesinger";
      maintainer = "sgschlesinger@gmail.com";
      author = "Samuel Schlesinger";
      homepage = "";
      url = "";
      synopsis = "An implementation of extensible products and sums";
      description = "An implementation of extensible products and sums.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "test-summer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."summer" or (errorHandler.buildDepError "summer"))
          ];
          buildable = true;
        };
      };
    };
  }