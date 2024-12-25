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
      do-no-derived-instances = true;
      do-no-random = false;
      do-no-storable = false;
      do-liquid = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "cl3-posit"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017-2024 Nathan Waivio";
      maintainer = "Nathan Waivio <nathan.waivio@gmail.com>";
      author = "Nathan Waivio";
      homepage = "https://github.com/waivio/cl3-posit";
      url = "";
      synopsis = "Clifford Algebra of three dimensional space, implemented with Posit numbers.";
      description = "Haskell Library implementing standard functions for the Algebra of Physical Space Cl(3,0), R approximated by Posit Numbers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."posit" or (errorHandler.buildDepError "posit"))
          (hsPkgs."cl3" or (errorHandler.buildDepError "cl3"))
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
            (hsPkgs."cl3-posit" or (errorHandler.buildDepError "cl3-posit"))
            (hsPkgs."posit" or (errorHandler.buildDepError "posit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }