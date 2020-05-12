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
      specVersion = "1.12";
      identifier = { name = "http-mock"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2019 Fernando Rincon Martin";
      maintainer = "f.rincon@protonmail.com";
      author = "Fernando Rincon Martin";
      homepage = "https://github.com/gojup/http-mock#readme";
      url = "";
      synopsis = "HTTP mocking and expectations library for Haskell";
      description = "Please see the README on GitHub at <https://github.com/gojup/http-mock#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      tests = {
        "http-mock-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-mock" or (errorHandler.buildDepError "http-mock"))
            ];
          buildable = true;
          };
        };
      };
    }