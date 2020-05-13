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
      identifier = { name = "latex-function-tables"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Simon Hudon";
      maintainer = "simon.hudon@gmail.com";
      author = "Simon Hudon";
      homepage = "https://github.com/githubuser/nfm2017#readme";
      url = "";
      synopsis = "Function table specifications in latex";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-printf" or (errorHandler.buildDepError "th-printf"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."latex-function-tables" or (errorHandler.buildDepError "latex-function-tables"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."latex-function-tables" or (errorHandler.buildDepError "latex-function-tables"))
            ];
          buildable = true;
          };
        };
      };
    }