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
      specVersion = "1.8";
      identifier = { name = "maxent"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/maxent";
      url = "";
      synopsis = "Compute Maximum Entropy Distributions";
      description = "The maximum entropy method, or MAXENT, is variational approach for computing probability\ndistributions given a list of moment, or expected value, constraints.\n\nHere are some links for background info.\n\nA good overview of applications:\n<http://cmm.cit.nih.gov/maxent/letsgo.html>\n\nOn the idea of maximum entropy in general:\n<http://en.wikipedia.org/wiki/Principle_of_maximum_entropy>\n\nUse this package to compute discrete maximum entropy distributions over a list of values and\nlist of constraints.\n\nHere is a the example from Probability the Logic of Science\n\n@\nmaxent ([1,2,3], [average 1.5])\n@\n\nRight [0.61, 0.26, 0.11]\n\nThe classic dice example\n\n@\nmaxent ([1,2,3,4,5,6], [average 4.5])\n@\n\nRight [.05, .07, 0.11, 0.16, 0.23, 0.34]\n\nOne can use different constraints besides the average value there.\n\nAs for why you want to maximize the entropy to find the probability constraint,\nI will say this for now. In the case of the average constraint\nit is a kin to choosing a integer partition with the most interger compositions.\nI doubt that makes any sense, but I will try to explain more with a blog post soon.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."nonlinear-optimization" or (buildDepError "nonlinear-optimization"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."ad" or (buildDepError "ad"))
          ];
        };
      };
    }