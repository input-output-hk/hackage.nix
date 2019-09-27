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
      identifier = { name = "hasty-hamiltonian"; version = "1.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "http://jtobin.github.com/hasty-hamiltonian";
      url = "";
      synopsis = "Speedy traversal through parameter space.";
      description = "Gradient-based traversal through parameter space.\n\nThis implementation of HMC algorithm uses 'lens' as a means to operate over\ngeneric indexed traversable functors, so you can expect it to work if your\ntarget function takes a list, vector, map, sequence, etc. as its argument.\n\nIf you don't want to calculate your gradients by hand you can use the\nhandy <https://hackage.haskell.org/package/ad ad> library for automatic\ndifferentiation.\n\nExports a 'mcmc' function that prints a trace to stdout, as well as a\n'hamiltonian' transition operator that can be used more generally.\n\n> import Numeric.AD (grad)\n> import Numeric.MCMC.Hamiltonian\n>\n> target :: RealFloat a => [a] -> a\n> target [x0, x1] = negate ((x0 + 2 * x1 - 7) ^ 2 + (2 * x0 + x1 - 5) ^ 2)\n>\n> gTarget :: [Double] -> [Double]\n> gTarget = grad target\n>\n> booth :: Target [Double]\n> booth = Target target (Just gTarget)\n>\n> main :: IO ()\n> main = withSystemRandom . asGenIO \$ mcmc 10000 0.05 20 [0, 0] booth";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mcmc-types" or (buildDepError "mcmc-types"))
          (hsPkgs."mwc-probability" or (buildDepError "mwc-probability"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "booth" = {
          depends = [
            (hsPkgs."ad" or (buildDepError "ad"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mwc-probability" or (buildDepError "mwc-probability"))
            (hsPkgs."hasty-hamiltonian" or (buildDepError "hasty-hamiltonian"))
            ];
          buildable = true;
          };
        };
      };
    }