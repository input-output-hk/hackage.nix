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
      identifier = { name = "declarative"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "http://github.com/jtobin/declarative";
      url = "";
      synopsis = "DIY Markov Chains.";
      description = "This package presents a simple combinator language for Markov transition\noperators that are useful in MCMC.\n\nAny transition operators sharing the same stationary distribution and obeying\nthe Markov and reversibility properties can be combined in a couple of ways,\nsuch that the resulting operator preserves the stationary distribution and\ndesirable properties amenable for MCMC.\n\nWe can deterministically concatenate operators end-to-end, or sample from\na collection of them according to some probability distribution.  See\n<http://www.stat.umn.edu/geyer/f05/8931/n1998.pdf Geyer, 2005> for details.\n\nA useful strategy is to hedge one's 'sampling risk' by occasionally\ninterleaving a computationally-expensive transition (such as a gradient-based\nalgorithm like Hamiltonian Monte Carlo or NUTS) with cheap Metropolis\ntransitions.\n\n> transition = frequency [\n>     (9, metropolis 1.0)\n>   , (1, hamiltonian 0.05 20)\n>   ]\n\nAlternatively: sample consecutively using the same algorithm, but over a\nrange of different proposal distributions.\n\n> transition = concatAllT [\n>     slice 0.5\n>   , slice 1.0\n>   , slice 2.0\n>   ]\n\nOr just mix and match and see what happens!\n\n> transition =\n>   sampleT\n>     (sampleT (metropolis 0.5) (slice 0.1))\n>     (sampleT (hamiltonian 0.01 20) (metropolis 2.0))\n\nCheck the test suite for example usage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mcmc-types" or (buildDepError "mcmc-types"))
          (hsPkgs."mwc-probability" or (buildDepError "mwc-probability"))
          (hsPkgs."mighty-metropolis" or (buildDepError "mighty-metropolis"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."hasty-hamiltonian" or (buildDepError "hasty-hamiltonian"))
          (hsPkgs."speedy-slice" or (buildDepError "speedy-slice"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "rosenbrock" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mwc-probability" or (buildDepError "mwc-probability"))
            (hsPkgs."declarative" or (buildDepError "declarative"))
            ];
          buildable = true;
          };
        };
      };
    }