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
      identifier = { name = "speedy-slice"; version = "0.1.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "http://github.com/jtobin/speedy-slice";
      url = "";
      synopsis = "Speedy slice sampling.";
      description = "Speedy slice sampling.\n\nThis implementation of the slice sampling algorithm uses 'lens' as a means to\noperate over generic indexed traversable functors, so you can expect it to\nwork if your target function takes a list, vector, map, sequence, etc. as its\nargument.\n\nAdditionally you can sample over anything that's an instance of both 'Num' and\n'Variate', which is useful in the case of discrete parameters.\n\nExports a 'mcmc' function that prints a trace to stdout, as well as a\n'slice' transition operator that can be used more generally.\n\n> import Numeric.MCMC.Slice\n> import Data.Sequence (Seq, index, fromList)\n>\n> bnn :: Seq Double -> Double\n> bnn xs = -0.5 * (x0 ^ 2 * x1 ^ 2 + x0 ^ 2 + x1 ^ 2 - 8 * x0 - 8 * x1) where\n>   x0 = index xs 0\n>   x1 = index xs 1\n>\n> main :: IO ()\n> main = withSystemRandom . asGenIO \$ mcmc 10000 1 (fromList [0, 0]) bnn";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."mcmc-types" or (buildDepError "mcmc-types"))
          (hsPkgs."mwc-probability" or (buildDepError "mwc-probability"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      tests = {
        "rosenbrock" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mwc-probability" or (buildDepError "mwc-probability"))
            (hsPkgs."speedy-slice" or (buildDepError "speedy-slice"))
            ];
          };
        "bnn" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mwc-probability" or (buildDepError "mwc-probability"))
            (hsPkgs."speedy-slice" or (buildDepError "speedy-slice"))
            ];
          };
        };
      };
    }