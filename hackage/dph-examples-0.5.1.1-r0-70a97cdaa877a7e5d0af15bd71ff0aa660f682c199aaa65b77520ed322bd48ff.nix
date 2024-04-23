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
    flags = { gloss = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "dph-examples"; version = "0.5.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The DPH Team";
      homepage = "http://www.cse.unsw.edu.au/~chak/project/dph/";
      url = "";
      synopsis = "Examples using the DPH library.";
      description = "Examples using the DPH library.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "dph-sumsq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or (errorHandler.buildDepError "dph-par"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
        "dph-sumsq-seq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or (errorHandler.buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or (errorHandler.buildDepError "dph-seq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
        "dph-dotp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or (errorHandler.buildDepError "dph-par"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
        "dph-dotp-seq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or (errorHandler.buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or (errorHandler.buildDepError "dph-seq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
        "dph-evens" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or (errorHandler.buildDepError "dph-par"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
        "dph-evens-seq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or (errorHandler.buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or (errorHandler.buildDepError "dph-seq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
        "dph-reverse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or (errorHandler.buildDepError "dph-par"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
        "dph-reverse-seq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or (errorHandler.buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or (errorHandler.buildDepError "dph-seq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
        "dph-smvm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or (errorHandler.buildDepError "dph-par"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
        "dph-smvm-seq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or (errorHandler.buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or (errorHandler.buildDepError "dph-seq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
        "dph-quickhull" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or (errorHandler.buildDepError "dph-par"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
        "dph-quickhull-seq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or (errorHandler.buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or (errorHandler.buildDepError "dph-seq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
        "dph-quickhull-vector" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "dph-quicksort" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or (errorHandler.buildDepError "dph-par"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
        "dph-nbody" = {
          depends = if flags.gloss
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
              (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
              (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
              (hsPkgs."dph-par" or (errorHandler.buildDepError "dph-par"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
              (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
              (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
              (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
              (hsPkgs."dph-par" or (errorHandler.buildDepError "dph-par"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
            ];
          buildable = true;
        };
      };
    };
  }