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
      specVersion = "3.0";
      identifier = { name = "bluefin-internal"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tom Ellis";
      author = "Tom Ellis";
      homepage = "https://github.com/tomjaguarpaw/bluefin";
      url = "";
      synopsis = "The Bluefin effect system, internals";
      description = "The Bluefin effect system, internals";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
        ];
        buildable = true;
      };
      tests = {
        "bluefin-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bluefin-internal" or (errorHandler.buildDepError "bluefin-internal"))
          ];
          buildable = true;
        };
      };
    };
  }