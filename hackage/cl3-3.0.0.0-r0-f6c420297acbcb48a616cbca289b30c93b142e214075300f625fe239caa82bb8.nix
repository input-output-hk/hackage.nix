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
    flags = {
      do-no-derived-instances = false;
      do-no-random = false;
      do-no-storable = false;
      do-liquid = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "cl3"; version = "3.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017-2022 Nathan Waivio";
      maintainer = "Nathan Waivio <nathan.waivio@gmail.com>";
      author = "Nathan Waivio";
      homepage = "https://github.com/waivio/cl3";
      url = "";
      synopsis = "Clifford Algebra of three dimensional space.";
      description = "Haskell Library implementing standard functions for the Algebra of Physical Space Cl(3,0)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ] ++ pkgs.lib.optional (!flags.do-no-random) (hsPkgs."random" or (errorHandler.buildDepError "random"))) ++ pkgs.lib.optional (!flags.do-liquid) (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ pkgs.lib.optionals (flags.do-liquid) [
          (hsPkgs."liquid-base" or (errorHandler.buildDepError "liquid-base"))
          (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
        ];
        buildable = true;
      };
      tests = {
        "test-cl3" = {
          depends = [
            (hsPkgs."cl3" or (errorHandler.buildDepError "cl3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench-cl3-nbody" = {
          depends = [
            (hsPkgs."cl3" or (errorHandler.buildDepError "cl3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
        "bench-cl3-weigh" = {
          depends = [
            (hsPkgs."cl3" or (errorHandler.buildDepError "cl3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
          ];
          buildable = true;
        };
        "bench-cl3-massiv-nbody" = {
          depends = [
            (hsPkgs."cl3" or (errorHandler.buildDepError "cl3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
          ];
          buildable = true;
        };
      };
    };
  }