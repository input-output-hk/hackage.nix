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
      specVersion = "1.12";
      identifier = { name = "visualize-type-inference"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Andreas Abel, 2024";
      maintainer = "Andreas Abel";
      author = "Andreas Abel";
      homepage = "https://github.com/teach-plt/visualize-type-inference#readme";
      url = "";
      synopsis = "Simulate simple constraint-based type inference";
      description = "Constraint-based inference for simple types is traced step-by-step, both for the original algorithm J that eagerly applies substitutions gained from unification, and a more modern conception that separates constraint generation from constraint solving.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "visualize-type-inference" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."string-qq" or (errorHandler.buildDepError "string-qq"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
            (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
          ];
          buildable = true;
        };
      };
    };
  }