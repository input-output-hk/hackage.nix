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
      identifier = { name = "copilot"; version = "3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Frank Dedden <dev@dedden.net>";
      author = "Frank Dedden, Nis Nordby Wegmann, Lee Pike, Robin Morisset, Sebastian Niller, Alwyn Goodloe";
      homepage = "https://copilot-language.github.io";
      url = "";
      synopsis = "A stream DSL for writing embedded C programs.";
      description = "This package is the main entry-point for using Copilot.\n\nCopilot is a stream (i.e., infinite lists) domain-specific language (DSL) in\nHaskell that compiles into embedded C.  Copilot contains an interpreter,\nmultiple back-end compilers, and other verification tools.\n\nA tutorial, examples, and other information are available at\n<https://copilot-language.github.io>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."copilot-core" or (errorHandler.buildDepError "copilot-core"))
          (hsPkgs."copilot-theorem" or (errorHandler.buildDepError "copilot-theorem"))
          (hsPkgs."copilot-language" or (errorHandler.buildDepError "copilot-language"))
          (hsPkgs."copilot-libraries" or (errorHandler.buildDepError "copilot-libraries"))
          (hsPkgs."copilot-c99" or (errorHandler.buildDepError "copilot-c99"))
          ];
        buildable = true;
        };
      exes = {
        "addmult" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."copilot" or (errorHandler.buildDepError "copilot"))
            ];
          buildable = true;
          };
        "array" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."copilot" or (errorHandler.buildDepError "copilot"))
            ];
          buildable = true;
          };
        "cast" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."copilot" or (errorHandler.buildDepError "copilot"))
            ];
          buildable = true;
          };
        "clock" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."copilot" or (errorHandler.buildDepError "copilot"))
            (hsPkgs."copilot-libraries" or (errorHandler.buildDepError "copilot-libraries"))
            ];
          buildable = true;
          };
        "counter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."copilot" or (errorHandler.buildDepError "copilot"))
            ];
          buildable = true;
          };
        "engine" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."copilot" or (errorHandler.buildDepError "copilot"))
            ];
          buildable = true;
          };
        "heater" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."copilot" or (errorHandler.buildDepError "copilot"))
            (hsPkgs."copilot-c99" or (errorHandler.buildDepError "copilot-c99"))
            ];
          buildable = true;
          };
        "voting" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."copilot" or (errorHandler.buildDepError "copilot"))
            ];
          buildable = true;
          };
        };
      };
    }