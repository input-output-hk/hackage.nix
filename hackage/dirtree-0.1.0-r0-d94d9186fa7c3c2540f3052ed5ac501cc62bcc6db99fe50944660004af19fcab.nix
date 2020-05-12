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
      identifier = { name = "dirtree"; version = "0.1.0"; };
      license = "MIT";
      copyright = "MIT";
      maintainer = "christian@kalhauge.dk";
      author = "Christian Gram Kalhauge";
      homepage = "https://github.com/kalhauge/dirtree#readme";
      url = "";
      synopsis = "A small library for working with directories.";
      description = "A small library for loading and building directories as trees.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          ];
        buildable = true;
        };
      tests = {
        "dirtree-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."dirtree" or (errorHandler.buildDepError "dirtree"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."hspec-expectations-pretty-diff" or (errorHandler.buildDepError "hspec-expectations-pretty-diff"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
            ];
          buildable = true;
          };
        };
      };
    }