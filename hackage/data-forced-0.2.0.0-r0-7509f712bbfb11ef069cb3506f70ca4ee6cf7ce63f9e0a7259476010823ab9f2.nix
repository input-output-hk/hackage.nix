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
      identifier = { name = "data-forced"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2023";
      maintainer = "ruben.astud@gmail.com";
      author = "Ruben Astudillo";
      homepage = "https://github.com/RubenAstudillo/data-forced";
      url = "";
      synopsis = "Specify that lifted values were forced to WHNF or NF.";
      description = "Alternative to bang patterns using CBV functions and unlifted data types.\nTag your values to maintain the invariant that they were forced. Avoid\nliveness leaks on long lived data structures.\n\nMain tutorial on the only module. Here is a taste of how it will look\nlike.\n\n> import Data.Map.Lazy as ML -- Spine strict\n>\n> -- No references on added leafs even though it is a lazy map.\n> basicEvent :: ML.Map Char (ForcedWHNF Int) -> IO (ML.Map Char (ForcedWHNF Int))\n> basicEvent map0 = do\n>   let\n>     -- Step1: bind the strict value with a strict let. (2 + 2) reduced\n>     -- before val0 is bound.\n>     val0 :: StrictValueExtractor (ForcedWHNF Int)\n>     val0 = strictlyWHNF (2 + 2)\n>     -- val0 = strictlyWHNF (error \"argument evaluated\") -- would fail\n>\n>     -- Step2: extract the strict value to be use on lazy setting. A\n>     -- neccesary idiom to avoid a pitfall.\n>     val1 = case val0 of { Pairy val0' ext -> ext val0' }\n>\n>     -- Step3: Store the value free of references. Even though map1 is a lazy\n>     -- map, the references to evaluate val1 were already freed.\n>     map1 = ML.insert 'a' val1 map0\n>   pure map1";
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