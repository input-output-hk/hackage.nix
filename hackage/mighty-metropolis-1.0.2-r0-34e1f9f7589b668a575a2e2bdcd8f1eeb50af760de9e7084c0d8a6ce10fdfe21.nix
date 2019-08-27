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
      identifier = { name = "mighty-metropolis"; version = "1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "http://github.com/jtobin/mighty-metropolis";
      url = "";
      synopsis = "The Metropolis algorithm.";
      description = "The classic Metropolis algorithm.\n\nWander around parameter space according to a simple spherical Gaussian\ndistribution.\n\nExports a 'mcmc' function that prints a trace to stdout, as well as a\n'metropolis' transition operator that can be used more generally.\n\n> import Numeric.MCMC.Metropolis\n>\n> rosenbrock :: [Double] -> Double\n> rosenbrock [x0, x1] = negate (5  *(x1 - x0 ^ 2) ^ 2 + 0.05 * (1 - x0) ^ 2)\n>\n> main :: IO ()\n> main = withSystemRandom . asGenIO \$ mcmc 10000 1 [0, 0] rosenbrock";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."mcmc-types" or (buildDepError "mcmc-types"))
          (hsPkgs."mwc-probability" or (buildDepError "mwc-probability"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      tests = {
        "rosenbrock" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mighty-metropolis" or (buildDepError "mighty-metropolis"))
            (hsPkgs."mwc-probability" or (buildDepError "mwc-probability"))
            ];
          };
        "bnn" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mighty-metropolis" or (buildDepError "mighty-metropolis"))
            (hsPkgs."mwc-probability" or (buildDepError "mwc-probability"))
            ];
          };
        };
      };
    }