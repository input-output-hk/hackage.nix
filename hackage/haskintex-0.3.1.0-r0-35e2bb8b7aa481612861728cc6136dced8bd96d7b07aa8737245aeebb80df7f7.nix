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
      identifier = { name = "haskintex"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "http://daniel-diaz.github.io/projects/haskintex";
      url = "";
      synopsis = "Haskell Evaluation inside of LaTeX code.";
      description = "The /haskintex/ (Haskell in LaTeX) program is a tool that reads a LaTeX file and evaluates Haskell expressions contained\nin some specific commands and environments. It allows you to define your own functions, use any GHC Haskell language\nextension and, in brief, anything you can do within Haskell.\nAdditionally, it is possible to include expressions of 'LaTeX' type (see /HaTeX/ package) and render them as LaTeX code.\nYou can freely add any Haskell code you need, and make this code appear /optionally/ in the LaTeX output. It is a tiny program,\nand therefore, easy to understand, use and predict.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          ];
        buildable = true;
        };
      exes = {
        "haskintex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskintex" or (errorHandler.buildDepError "haskintex"))
            ];
          buildable = true;
          };
        };
      };
    }