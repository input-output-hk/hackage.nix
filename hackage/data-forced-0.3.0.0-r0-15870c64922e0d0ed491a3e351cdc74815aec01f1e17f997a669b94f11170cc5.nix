{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "data-forced"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "2023";
      maintainer = "ruben.astud@gmail.com";
      author = "Ruben Astudillo";
      homepage = "https://github.com/RubenAstudillo/data-forced";
      url = "";
      synopsis = "Specify that lifted values were forced to WHNF or NF.";
      description = "Alternative to bang patterns using CBV functions and unlifted data types.\nTag your values to maintain the invariant that they were forced. Avoid\nliveness leaks on long lived data structures.\n\nMain tutorial on the only module. Here is a taste of how it will look\nlike.\n\n> {-# Language QualifiedDo #-}\n> \n> import qualified Data.Forced as DF\n> import Data.Forced hiding (pure, fmap, (\\<*\\>), return, (>>=), (>>))\n> import Data.Map.Lazy qualified as ML\n> \n> noThunksForWHNF :: IO ()\n> noThunksForWHNF = do\n>   -- map0 actually evaluated on here.\n>   let map0 :: Demand (ML.Map Char (ForcedWHNF Int))\n>       map0 = DF.do\n>         v <- demandWHNF (const (2 + 2) 'a')\n>         DF.pure $ ML.insert 'a' v ML.empty\n> \n>   map1 <- extractDemand map0\n>   go (ML.lookup 'a' map1)\n> \n> -- pattern matching for de-structuring, no construction allowed.\n> go :: ForcedWHNF Int -> IO ()\n> go (ForcedWHNF i) =  print i";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-elevator" or (errorHandler.buildDepError "data-elevator"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "data-forced-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."data-forced" or (errorHandler.buildDepError "data-forced"))
            ];
          buildable = true;
          };
        };
      };
    }