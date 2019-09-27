let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fitspec"; version = "0.2.1"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."leancheck" or (buildDepError "leancheck"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "mutate" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "showmutable" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "derive" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "avltrees" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "bools" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "digraphs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "heaps" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "id" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "list" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "mergeheaps" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "pretty" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          buildable = true;
          };
        "sets" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "setsofsets" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "sieve" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "sorting" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "spring" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }