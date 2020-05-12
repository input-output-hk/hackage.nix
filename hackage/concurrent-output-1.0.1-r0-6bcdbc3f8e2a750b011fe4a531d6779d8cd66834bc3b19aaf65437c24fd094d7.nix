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
      specVersion = "1.8";
      identifier = { name = "concurrent-output"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess";
      homepage = "";
      url = "";
      synopsis = "handling concurrent output";
      description = "Provides a simple interface for writing concurrent programs that\nneed to output a lot of status messages to the console, and/or run\nconcurrent external commands that output to the console.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
        buildable = true;
        };
      };
    }