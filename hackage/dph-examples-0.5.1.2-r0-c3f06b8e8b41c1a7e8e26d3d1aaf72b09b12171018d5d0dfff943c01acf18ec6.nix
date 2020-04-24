{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "dph-examples"; version = "0.5.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The DPH Team";
      homepage = "http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell";
      url = "";
      synopsis = "Examples using Data Parallel Haskell";
      description = "Examples using Data Parallel Haskell";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dph-sumsq" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-par"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-sumsq-seq" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or ((hsPkgs.pkgs-errors).buildDepError "dph-seq"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-dotp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-par"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-dotp-seq" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or ((hsPkgs.pkgs-errors).buildDepError "dph-seq"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-evens" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-par"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-evens-seq" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or ((hsPkgs.pkgs-errors).buildDepError "dph-seq"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-reverse" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-par"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-reverse-seq" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or ((hsPkgs.pkgs-errors).buildDepError "dph-seq"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-smvm" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-par"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-smvm-seq" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or ((hsPkgs.pkgs-errors).buildDepError "dph-seq"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-quickhull" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-par"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-quickhull-seq" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or ((hsPkgs.pkgs-errors).buildDepError "dph-seq"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-quickhull-vector" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        "dph-quicksort" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-par"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-nbody-gloss" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-par"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."parseargs" or ((hsPkgs.pkgs-errors).buildDepError "parseargs"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "dph-nbody-batch" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-par"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."parseargs" or ((hsPkgs.pkgs-errors).buildDepError "parseargs"))
            ];
          buildable = true;
          };
        };
      };
    }