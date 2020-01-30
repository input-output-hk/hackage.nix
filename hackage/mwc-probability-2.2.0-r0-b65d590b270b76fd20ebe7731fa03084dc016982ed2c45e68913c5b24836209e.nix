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
      identifier = { name = "mwc-probability"; version = "2.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca, zocca.marco gmail";
      author = "Jared Tobin, Marco Zocca";
      homepage = "http://github.com/jtobin/mwc-probability";
      url = "";
      synopsis = "Sampling function-based probability distributions.";
      description = "A simple probability distribution type, where distributions are characterized\nby sampling functions.\n\nThis implementation is a thin layer over @mwc-random@, which handles RNG\nstate-passing automatically by using a @PrimMonad@ like @IO@ or @ST s@ under\nthe hood.\n\n/Examples/\n\nTransform a distribution's support while leaving its density structure\ninvariant:\n\n> -- uniform over [0, 1] to uniform over [1, 2]\n> fmap succ uniform\n\nSequence distributions together using bind:\n\n> -- a beta-binomial compound distribution\n> beta 1 10 >>= binomial 10\n\nUse do-notation to build complex joint distributions from composable,\nlocal conditionals:\n\n> hierarchicalModel = do\n>   [c, d, e, f] <- replicateM 4 \$ uniformR (1, 10)\n>   a <- gamma c d\n>   b <- gamma e f\n>   p <- beta a b\n>   n <- uniformR (5, 10)\n>   binomial n p";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }