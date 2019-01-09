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
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.dph-base)
            (hsPkgs.dph-prim-par)
            (hsPkgs.dph-par)
            (hsPkgs.random)
            (hsPkgs.old-time)
            ];
          };
        "dph-sumsq-seq" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.dph-base)
            (hsPkgs.dph-prim-seq)
            (hsPkgs.dph-seq)
            (hsPkgs.random)
            (hsPkgs.old-time)
            ];
          };
        "dph-dotp" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.dph-base)
            (hsPkgs.dph-prim-par)
            (hsPkgs.dph-par)
            (hsPkgs.random)
            (hsPkgs.old-time)
            ];
          };
        "dph-dotp-seq" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.dph-base)
            (hsPkgs.dph-prim-seq)
            (hsPkgs.dph-seq)
            (hsPkgs.random)
            (hsPkgs.old-time)
            ];
          };
        "dph-evens" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.dph-base)
            (hsPkgs.dph-prim-par)
            (hsPkgs.dph-par)
            (hsPkgs.random)
            (hsPkgs.old-time)
            ];
          };
        "dph-evens-seq" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.dph-base)
            (hsPkgs.dph-prim-seq)
            (hsPkgs.dph-seq)
            (hsPkgs.random)
            (hsPkgs.old-time)
            ];
          };
        "dph-reverse" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.dph-base)
            (hsPkgs.dph-prim-par)
            (hsPkgs.dph-par)
            (hsPkgs.random)
            (hsPkgs.old-time)
            ];
          };
        "dph-reverse-seq" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.dph-base)
            (hsPkgs.dph-prim-seq)
            (hsPkgs.dph-seq)
            (hsPkgs.random)
            (hsPkgs.old-time)
            ];
          };
        "dph-smvm" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.dph-base)
            (hsPkgs.dph-prim-par)
            (hsPkgs.dph-par)
            (hsPkgs.random)
            (hsPkgs.old-time)
            ];
          };
        "dph-smvm-seq" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.dph-base)
            (hsPkgs.dph-prim-seq)
            (hsPkgs.dph-seq)
            (hsPkgs.random)
            (hsPkgs.old-time)
            ];
          };
        "dph-quickhull" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.dph-base)
            (hsPkgs.dph-prim-par)
            (hsPkgs.dph-par)
            (hsPkgs.random)
            (hsPkgs.old-time)
            ];
          };
        "dph-quickhull-seq" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.dph-base)
            (hsPkgs.dph-prim-seq)
            (hsPkgs.dph-seq)
            (hsPkgs.random)
            (hsPkgs.old-time)
            ];
          };
        "dph-quickhull-vector" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.old-time)
            (hsPkgs.random)
            ];
          };
        "dph-quicksort" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.dph-base)
            (hsPkgs.dph-prim-par)
            (hsPkgs.dph-par)
            (hsPkgs.random)
            (hsPkgs.old-time)
            ];
          };
        "dph-nbody-gloss" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.dph-base)
            (hsPkgs.dph-prim-par)
            (hsPkgs.dph-par)
            (hsPkgs.random)
            (hsPkgs.old-time)
            (hsPkgs.parseargs)
            (hsPkgs.gloss)
            ];
          };
        "dph-nbody-batch" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.dph-base)
            (hsPkgs.dph-prim-par)
            (hsPkgs.dph-par)
            (hsPkgs.random)
            (hsPkgs.old-time)
            (hsPkgs.parseargs)
            ];
          };
        };
      };
    }