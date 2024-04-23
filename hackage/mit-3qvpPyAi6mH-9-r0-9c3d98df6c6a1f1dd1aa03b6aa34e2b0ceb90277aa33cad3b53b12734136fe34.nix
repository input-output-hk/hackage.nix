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
      identifier = { name = "mit-3qvpPyAi6mH"; version = "9"; };
      license = "MIT";
      copyright = "Copyright (C) 2020-2022 Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/mit";
      url = "";
      synopsis = "A git wrapper with a streamlined UX";
      description = "A git wrapper with a streamlined UX.\n\nTo install the @mit@ command-line tool, run the following:\n\n@\ncabal install -w ghc-9.2.2 mit-3qvpPyAi6mH\n@\n\nThis package's library component does not follow the Package Versioning Policy.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."ki" or (errorHandler.buildDepError "ki"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
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
            (hsPkgs."mit-3qvpPyAi6mH" or (errorHandler.buildDepError "mit-3qvpPyAi6mH"))
          ];
          buildable = true;
        };
      };
    };
  }