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
      identifier = { name = "probable"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2014-2015 Alp Mestanogullari";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari";
      homepage = "http://github.com/alpmestan/probable";
      url = "";
      synopsis = "Easy and reasonably efficient probabilistic programming and random generation";
      description = "Easy and reasonably efficient probabilistic programming and random generation\n\nThis library gives a common language to speak about\nprobability distributions and\nrandom generation, by wrapping both, when necessary,\nin a 'RandT' monad defined in @Math.Probable.Random@.\nThis module also provides a lot of useful little\ncombinators for easily describing how random values for your\ntypes should be generated.\n\nIn @Math.Probable.Distribution@, you'll find functions for generating\nrandom values that follow any distribution supported by\n<http://hackage.haskell.org/package/mwc-random mwc-random>.\n\nIn @Math.Probable.Distribution.Finite@, you'll find an adaptation\nof Eric Kidd's work on probability monads (from\n<http://www.randomhacks.net/probability-monads/ here>).\n\nYou may want to check the examples bundled with this package,\nviewable online at <https://github.com/alpmestan/probable/tree/master/examples>.\nOne of these examples is simple enough to be worth reproducing here.\n\n> module Main where\n>\n> import Control.Applicative\n> import Control.Monad\n> import Math.Probable\n>\n> import qualified Data.Vector.Unboxed as VU\n>\n> data Person = Person Int    -- ^ age\n>                      Double -- ^ weight (kgs)\n>                      Double -- ^ salary (e.g euros)\n>     deriving (Eq, Show)\n>\n> person :: RandT IO Person\n> person =\n>     Person <\$> uniformIn (1, 100)\n>            <*> uniformIn (2, 130)\n>            <*> uniformIn (500, 10000)\n>\n> randomPersons :: Int -> IO [Person]\n> randomPersons n = mwc \$ listOf n person\n>\n> randomDoubles :: Int -> IO (VU.Vector Double)\n> randomDoubles n = mwc \$ vectorOf n double\n>\n> main :: IO ()\n> main = do\n>     randomPersons 10 >>= mapM_ print\n>     randomDoubles 10 >>= VU.mapM_ print\n\nPlease report any feature request or problem, either by email\nor through github's issues/feature requests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."statistics" or (buildDepError "statistics"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      benchmarks = {
        "random" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."probable" or (buildDepError "probable"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."mwc-random-monad" or (buildDepError "mwc-random-monad"))
            ];
          };
        };
      };
    }