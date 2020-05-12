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
      identifier = { name = "haskell-player"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Giovanni Cappellotto";
      maintainer = "potomak84@gmail.com";
      author = "Giovanni Cappellotto";
      homepage = "https://github.com/potomak/haskell-player";
      url = "";
      synopsis = "A terminal music player based on afplay";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          ];
        buildable = true;
        };
      exes = {
        "haskell-player" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-player" or (errorHandler.buildDepError "haskell-player"))
            ];
          buildable = true;
          };
        };
      tests = {
        "haskell-player-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-player" or (errorHandler.buildDepError "haskell-player"))
            ];
          buildable = true;
          };
        };
      };
    }