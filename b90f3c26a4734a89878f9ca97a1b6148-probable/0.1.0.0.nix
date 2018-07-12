{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "probable";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Alp Mestanogullari";
        maintainer = "alpmestan@gmail.com";
        author = "Alp Mestanogullari";
        homepage = "http://github.com/alpmestan/probable";
        url = "";
        synopsis = "Easy and reasonably efficient probabilistic programming and random generation";
        description = "Easy and reasonably efficient probabilistic programming and random generation\n\nThis library gives a common language to speak about\nprobability distributions and\nrandom generation, by wrapping both, when necessary,\nin a 'RandT' monad defined in @Math.Probable.Random@.\nThis module also provides a lot of useful little\ncombinators for easily describing how random values for your\ntypes should be generated.\n\nIn @Math.Probable.Distribution@, you'll find functions for generating\nrandom values that follow any distribution supported by\n<http://hackage.haskell.org/package/mwc-random mwc-random>.\n\nIn @Math.Probable.Distribution.Finite@, you'll find an adaptation\nof Eric Kidd's work on probability monads (from\n<http://www.randomhacks.net/probability-monads/ here>).\n\nYou may want to check the examples bundled with this package,\nviewable online at <https://github.com/alpmestan/probable/tree/master/examples>.\nOne of these examples is simple enough to be worth reproducing here.\n\n> module Main where\n>\n> import Control.Applicative\n> import Control.Monad\n> import Math.Probable\n>\n> import qualified Data.Vector.Unboxed as VU\n>\n> data Person = Person Int    -- ^ age\n>                      Double -- ^ weight (kgs)\n>                      Double -- ^ salary (e.g euros)\n>     deriving (Eq, Show)\n>\n> person :: RandT IO Person\n> person =\n>     Person <\$> uniformIn (1, 100)\n>            <*> uniformIn (2, 130)\n>            <*> uniformIn (500, 10000)\n>\n> randomPersons :: Int -> IO [Person]\n> randomPersons n = mwc \$ listOf n person\n>\n> randomDoubles :: Int -> IO (VU.Vector Double)\n> randomDoubles n = mwc \$ vectorOf n double\n>\n> main :: IO ()\n> main = do\n>     randomPersons 10 >>= mapM_ print\n>     randomDoubles 10 >>= VU.mapM_ print\n\nPlease report any feature request or problem, either by email\nor through github's issues/feature requests.";
        buildType = "Simple";
      };
      components = {
        "probable" = {
          depends  = [
            hsPkgs.base
            hsPkgs.statistics
            hsPkgs.vector
            hsPkgs.mwc-random
            hsPkgs.primitive
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
        benchmarks = {
          "random" = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.criterion
              hsPkgs.probable
              hsPkgs.mwc-random
              hsPkgs.mwc-random-monad
            ];
          };
          "distrib" = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.criterion
              hsPkgs.probable
              hsPkgs.mwc-random
              hsPkgs.primitive
            ];
          };
        };
      };
    }