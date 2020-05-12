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
      identifier = { name = "stack-type"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "aiya000";
      maintainer = "aiya000.develop@gmail.com";
      author = "aiya000";
      homepage = "https://github.com/aiya000/hs-stack-type";
      url = "";
      synopsis = "The basic stack type";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }