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
      identifier = { name = "copilot"; version = "2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lee Pike <leepike@galois.com>";
      author = "Nis Nordby Wegmann, Lee Pike, Robin Morisset, Sebastian Niller, Alwyn Goodloe";
      homepage = "http://leepike.github.com/Copilot/";
      url = "";
      synopsis = "A stream DSL for writing embedded C programs.";
      description = "This package is the main entry-point for using Copilot.\n\nCopilot is a stream (i.e., infinite lists) domain-specific language (DSL) in\nHaskell that compiles into embedded C.  Copilot contains an interpreter,\nmultiple back-end compilers, and other verification tools.  A tutorial, bug\nreports, and todos are available at\n<https://github.com/leepike/copilot-discussion>.\n\nExamples are available at <https://github.com/leepike/Copilot/tree/master/Examples>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."copilot-core" or (errorHandler.buildDepError "copilot-core"))
          (hsPkgs."copilot-theorem" or (errorHandler.buildDepError "copilot-theorem"))
          (hsPkgs."copilot-language" or (errorHandler.buildDepError "copilot-language"))
          (hsPkgs."copilot-libraries" or (errorHandler.buildDepError "copilot-libraries"))
          (hsPkgs."copilot-sbv" or (errorHandler.buildDepError "copilot-sbv"))
          (hsPkgs."copilot-cbmc" or (errorHandler.buildDepError "copilot-cbmc"))
          (hsPkgs."copilot-c99" or (errorHandler.buildDepError "copilot-c99"))
          ];
        buildable = true;
        };
      exes = {
        "copilot-regression" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."copilot-core" or (errorHandler.buildDepError "copilot-core"))
            (hsPkgs."copilot-theorem" or (errorHandler.buildDepError "copilot-theorem"))
            (hsPkgs."copilot-language" or (errorHandler.buildDepError "copilot-language"))
            (hsPkgs."copilot-libraries" or (errorHandler.buildDepError "copilot-libraries"))
            (hsPkgs."copilot-sbv" or (errorHandler.buildDepError "copilot-sbv"))
            (hsPkgs."copilot-cbmc" or (errorHandler.buildDepError "copilot-cbmc"))
            (hsPkgs."copilot-c99" or (errorHandler.buildDepError "copilot-c99"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }