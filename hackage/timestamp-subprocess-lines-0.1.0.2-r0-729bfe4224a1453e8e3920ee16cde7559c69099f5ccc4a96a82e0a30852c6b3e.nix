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
      identifier = {
        name = "timestamp-subprocess-lines";
        version = "0.1.0.2";
        };
      license = "BSD-3-Clause";
      copyright = "Eyal Lotem (2012)";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "https://github.com/Peaker/timestamp-subprocess-lines";
      url = "";
      synopsis = "Run a command and timestamp its stdout/stderr lines";
      description = "A small utility that allows executing other commands\nand prefix each line with a timestamp.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Timestamp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }