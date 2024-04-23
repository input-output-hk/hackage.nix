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
      specVersion = "1.6";
      identifier = { name = "Nussinov78"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2011-2012";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen, 2011-2012";
      homepage = "http://www.tbi.univie.ac.at/~choener/adpfusion";
      url = "";
      synopsis = "Nussinov78 using the ADPfusion library.";
      description = "The Nussinov78 RNA secondary structure prediction algorithm\nusing the ADPfusion framework.\n\nThis algorithm is simple enough to be used as a tutorial-type\nexample. It also shows that efficient code is possible. The\nADPfusion code compared to C is slower by a factor of only 1.2.\nWe plan to improve upon this.\n\nA number of helper functions currently present in\nBioInf.Nussinov78 will later move in their own library.\n\nBuild using GHC-7.6.1, the new code generator and llvm for best\nperformance.\n\nFor comparison, a version of the algorithm written in C is\navailable under C/nussinov.c. Use at least\n\"gcc -O3 nussinov.c\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
          (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
      exes = { "Nussinov78" = { buildable = true; }; };
    };
  }