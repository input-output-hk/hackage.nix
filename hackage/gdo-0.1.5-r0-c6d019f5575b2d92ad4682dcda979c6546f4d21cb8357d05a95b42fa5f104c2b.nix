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
      identifier = { name = "gdo"; version = "0.1.5"; };
      license = "GPL-3.0-only";
      copyright = "2016 (C) Sebastian Jordan";
      maintainer = "sebastian.jordan.mail@googlemail.com";
      author = "Sebastian Jordan";
      homepage = "";
      url = "";
      synopsis = "recursive atomic build system";
      description = "*gdo* is a build system similar to **GNU Make**. It builds files from\nsources and recipes.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gdo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }