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
      specVersion = "1.10";
      identifier = { name = "open-typerep"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014, Emil Axelsson";
      maintainer = "emax@chalmers.se";
      author = "Emil Axelsson";
      homepage = "https://github.com/emilaxelsson/open-typerep";
      url = "";
      synopsis = "Open type representations and dynamic types";
      description = "This package uses Data Types à la Carte to provide open type representations\nand dynamic types/coercions for open type universes.\n\nExample 1 (dynamic types):\n\n> type MyUniverse = IntType :+: BoolType\n>\n> hlist :: [Dynamic MyUniverse]\n> hlist = [toDyn True, toDyn (1 :: Int)]\n\n> *Main> hlist\n> [True,1]\n\nNote that if we were using \"Data.Dynamic\", it would just print\n\n> [<<Bool>>,<<Int>>]\n\nExample 2 (dynamically typed addition):\n\n> addDyn :: (TypeEq ts ts, PWitness Num ts ts) => Dynamic ts -> Dynamic ts -> Maybe (Dynamic ts)\n> addDyn (Dyn ta a) (Dyn tb b) = do\n>     Dict <- typeEq ta tb\n>     Dict <- pwit pNum ta\n>     return (Dyn ta (a+b))\n\n\"Data.Dynamic\" could only do this monomorphically, for one 'Num' type at a\ntime.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syntactic" or (errorHandler.buildDepError "syntactic"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
        ];
        buildable = true;
      };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."open-typerep" or (errorHandler.buildDepError "open-typerep"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "dynamic-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."open-typerep" or (errorHandler.buildDepError "open-typerep"))
          ];
          buildable = true;
        };
      };
    };
  }