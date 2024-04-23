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
      identifier = { name = "data-forced"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2023";
      maintainer = "ruben.astud@gmail.com";
      author = "Ruben Astudillo";
      homepage = "";
      url = "";
      synopsis = "Specify that lifted values were forced to WHNF or NF.";
      description = "Alternative to bang patterns using CBV functions and unlifted data types.\nTag your values to maintain the invariant that they were forced. Avoid\nliveness leaks on long running data structures.\n\n> import Data.Map.Lazy as ML -- Spine strict\n> \n> -- No references on added leafs even though it is a lazy map.\n> basicEvent :: ML.Map Char (ForcedWHNF Int) -> IO (ML.Map Char (ForcedWHNF Int))\n> basicEvent map0 = do\n>   let val0 :: Strict (ForcedWHNF Int)\n>       -- val0 = strictlyWHNF (error \"argument evaluated\") -- would fail\n>       val0 = strictlyWHNF (2 + 2)\n>       -- CBV function, 2 + 2 reduced before val0 is bound.\n>       Strict val1 = val0  -- De-structure\n>       map1 = ML.insert 'a' val1 map0\n>   pure map1";
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