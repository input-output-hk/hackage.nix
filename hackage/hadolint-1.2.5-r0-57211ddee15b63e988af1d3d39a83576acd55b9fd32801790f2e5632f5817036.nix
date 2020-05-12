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
      identifier = { name = "hadolint"; version = "1.2.5"; };
      license = "GPL-3.0-only";
      copyright = "Lukas Martinelli";
      maintainer = "me@lukasmartinelli.ch";
      author = "Lukas Martinelli";
      homepage = "https://github.com/hadolint/hadolint";
      url = "";
      synopsis = "Dockerfile Linter JavaScript API";
      description = "A smarter Dockerfile linter that helps you build best practice Docker images.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ShellCheck" or (errorHandler.buildDepError "ShellCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."language-docker" or (errorHandler.buildDepError "language-docker"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      exes = {
        "hadolint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gitrev" or (errorHandler.buildDepError "gitrev"))
            (hsPkgs."hadolint" or (errorHandler.buildDepError "hadolint"))
            (hsPkgs."language-docker" or (errorHandler.buildDepError "language-docker"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hadolint-unit-tests" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."ShellCheck" or (errorHandler.buildDepError "ShellCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hadolint" or (errorHandler.buildDepError "hadolint"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."language-docker" or (errorHandler.buildDepError "language-docker"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }