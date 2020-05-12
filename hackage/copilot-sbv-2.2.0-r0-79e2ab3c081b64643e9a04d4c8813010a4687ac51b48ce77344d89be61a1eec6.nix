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
      identifier = { name = "copilot-sbv"; version = "2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "leepike@galois.com";
      author = "Lee Pike\n, Robin Morisset\n, Alwyn Goodloe\n, Sebastian Niller\n, Nis Nordby Wegmann";
      homepage = "";
      url = "";
      synopsis = "A compiler for CoPilot targeting SBV.";
      description = "The Copilot back-end targeting SBV <http://hackage.haskell.org/package/sbv>.\n\nCopilot is a stream (i.e., infinite lists) domain-specific language (DSL) in\nHaskell that compiles into embedded C.  Copilot contains an interpreter,\nmultiple back-end compilers, and other verification tools.  A tutorial, bug\nreports, and todos are available at\n<https://github.com/Copilot-Language/copilot-discussion>.\n\nExamples are available at\n<https://github.com/Copilot-Language/Copilot/tree/master/Examples>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."sbv" or (errorHandler.buildDepError "sbv"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."copilot-core" or (errorHandler.buildDepError "copilot-core"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      };
    }