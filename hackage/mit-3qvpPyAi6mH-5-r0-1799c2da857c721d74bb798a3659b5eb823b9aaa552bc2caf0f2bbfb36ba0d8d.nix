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
      identifier = { name = "mit-3qvpPyAi6mH"; version = "5"; };
      license = "MIT";
      copyright = "Copyright (C) 2020 Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/mit";
      url = "";
      synopsis = "A git wrapper with a streamlined UX";
      description = "A git wrapper with a streamlined UX.\n\nTo install the @mit@ command-line tool, run @cabal install mit-3qvpPyAi6mH@.\n\nThis package's library component does not follow the Package Versioning Policy, and is only exposed for the test\nsuite.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."ki" or (errorHandler.buildDepError "ki"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."record-dot-preprocessor" or (errorHandler.buildDepError "record-dot-preprocessor"))
          (hsPkgs."record-hasfield" or (errorHandler.buildDepError "record-hasfield"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-ansi" or (errorHandler.buildDepError "text-ansi"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
      exes = {
        "mit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ki" or (errorHandler.buildDepError "ki"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."record-dot-preprocessor" or (errorHandler.buildDepError "record-dot-preprocessor"))
            (hsPkgs."record-hasfield" or (errorHandler.buildDepError "record-hasfield"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-ansi" or (errorHandler.buildDepError "text-ansi"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."mit-3qvpPyAi6mH" or (errorHandler.buildDepError "mit-3qvpPyAi6mH"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ki" or (errorHandler.buildDepError "ki"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."record-dot-preprocessor" or (errorHandler.buildDepError "record-dot-preprocessor"))
            (hsPkgs."record-hasfield" or (errorHandler.buildDepError "record-hasfield"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-ansi" or (errorHandler.buildDepError "text-ansi"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."mit-3qvpPyAi6mH" or (errorHandler.buildDepError "mit-3qvpPyAi6mH"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
          buildable = true;
        };
      };
    };
  }