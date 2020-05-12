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
      specVersion = "1.18";
      identifier = { name = "fitspec"; version = "0.4.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela,  Colin Runciman";
      homepage = "https://github.com/rudymatela/fitspec#readme";
      url = "";
      synopsis = "refining property sets for testing Haskell programs";
      description = "FitSpec provides automated assistance in the task of refining test properties\nfor Haskell functions.\n\nFitSpec tests mutant variations of functions under test against a given\nproperty set, recording any surviving mutants that pass all tests. FitSpec\nthen reports:\n\n* surviving mutants: indicating incompleteness of properties,\nprompting the user to amend a property or to add a new one;\n\n* conjectures: indicating redundancy in the property set,\nprompting the user to remove properties so to reduce the cost of testing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "mutate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            ];
          buildable = true;
          };
        "showmutable" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            ];
          buildable = true;
          };
        "derive" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            ];
          buildable = true;
          };
        "utils" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "avltrees" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            ];
          buildable = true;
          };
        "bools" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            ];
          buildable = true;
          };
        "digraphs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            ];
          buildable = true;
          };
        "heaps" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            ];
          buildable = true;
          };
        "id" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            ];
          buildable = true;
          };
        "list" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            ];
          buildable = true;
          };
        "mergeheaps" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            ];
          buildable = true;
          };
        "pretty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        "sets" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            ];
          buildable = true;
          };
        "setsofsets" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            ];
          buildable = true;
          };
        "sieve" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            ];
          buildable = true;
          };
        "sorting" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            ];
          buildable = true;
          };
        "spring" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fitspec" or (errorHandler.buildDepError "fitspec"))
            ];
          buildable = true;
          };
        };
      };
    }