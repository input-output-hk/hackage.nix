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
      specVersion = "0";
      identifier = { name = "NGrams"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jgbailey _ gmail _ com";
      author = "Justin Bailey";
      homepage = "";
      url = "";
      synopsis = "Simple application for calculating n-grams using Google.";
      description = "An n-gram is a natural language processing technique for determining,\ngiven a list of words and a phrase, the probability that each of the\nwords given will follow in the phrase. The executable provided asks for\na phrase and a list of alternate ending words. It also asks for the type\nof n-gram to create (e.g., bi-gram, tri-gram). The probability for each\npossible phrase is then calculated using Google search results.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "ngrams" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."HCL" or (buildDepError "HCL"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            ];
          };
        };
      };
    }