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
      identifier = { name = "scotty-format"; version = "0.1.1.0"; };
      license = "Apache-2.0";
      copyright = "2016 Giovanni Cappellotto";
      maintainer = "potomak84@gmail.com";
      author = "Giovanni Cappellotto";
      homepage = "https://github.com/potomak/scotty-format#readme";
      url = "";
      synopsis = "Response format helper for the Scotty web framework.";
      description = "scotty-format is a helper for the Scotty web framework that helps you defining\ndifferent response formats based on the request's `Accept` header value.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "scotty-format-example" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."scotty-format" or (errorHandler.buildDepError "scotty-format"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "scotty-format-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scotty-format" or (errorHandler.buildDepError "scotty-format"))
            ];
          buildable = true;
          };
        };
      };
    }