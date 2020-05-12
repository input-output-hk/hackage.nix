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
    flags = { examples = false; debug = false; debugoutput = false; };
    package = {
      specVersion = "1.10.0";
      identifier = { name = "ADPfusionSet"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2016-2017";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2016-2017";
      homepage = "https://github.com/choener/ADPfusionSet";
      url = "";
      synopsis = "Dynamic programming for Set data structures.";
      description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nExtensions of ADPfusion for set-(like) data structures.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bits" or (errorHandler.buildDepError "bits"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-orphans" or (errorHandler.buildDepError "th-orphans"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
          (hsPkgs."DPutils" or (errorHandler.buildDepError "DPutils"))
          (hsPkgs."OrderedBits" or (errorHandler.buildDepError "OrderedBits"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."ADPfusionSet" or (errorHandler.buildDepError "ADPfusionSet"))
            ];
          buildable = true;
          };
        };
      };
    }