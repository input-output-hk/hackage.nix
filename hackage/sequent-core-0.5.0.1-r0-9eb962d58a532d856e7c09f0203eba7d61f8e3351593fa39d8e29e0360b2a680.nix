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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sequent-core"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maurerl@cs.uoregon.edu";
      author = "Luke Maurer, Paul Downen, Iavor S. Diatchki";
      homepage = "https://github.com/lukemaurer/sequent-core";
      url = "https://github.com/lukemaurer/sequent-core/archive/master.zip";
      synopsis = "Alternative Core language for GHC plugins";
      description = "Sequent Core is a GHC plugin library based on a sequent calculus. It includes:\n\n*   A set of datatypes for a language expressing function code as /interactions/\nbetween values and their contexts (/continuations/)\n*   A library for writing GHC optimizer plugins using the Sequent Core\nlanguage in place of the built-in Core language\n*   Example plugins written using Sequent Core";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "DumpExpl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sequent-core" or (errorHandler.buildDepError "sequent-core"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "SpecConstrExpl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sequent-core" or (errorHandler.buildDepError "sequent-core"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "SimplExpl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sequent-core" or (errorHandler.buildDepError "sequent-core"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "CasesExpl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sequent-core" or (errorHandler.buildDepError "sequent-core"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "SizesExpl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sequent-core" or (errorHandler.buildDepError "sequent-core"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }