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
      identifier = { name = "copilot-language"; version = "0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "leepike@gmail.com";
      author = "Lee Pike, Robin Morisset, Alwyn Goodloe, Sebastian Niller,\nNis Nordby Wegmann";
      homepage = "";
      url = "";
      synopsis = "A Haskell-embedded DSL for monitoring hard real-time\ndistributed systems.";
      description = "The concrete syntax for Copilot.\n\nCopilot is a stream (i.e., infinite lists) domain-specific language (DSL) in\nHaskell that compiles into embedded C.  Copilot contains an interpreter,\nmultiple back-end compilers, and other verification tools.  A tutorial, bug\nreports, and todos are available at\n<https://github.com/niswegmann/copilot-discussion>.\n\nExamples are available at\n<https://github.com/leepike/Copilot/tree/master/Examples>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-reify" or (errorHandler.buildDepError "data-reify"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."copilot-core" or (errorHandler.buildDepError "copilot-core"))
          ];
        buildable = true;
        };
      };
    }