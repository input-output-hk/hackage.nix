{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "PrimitiveArray";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2010-2013";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Efficient multidimensional arrays";
      description = "This library provides efficient multidimensional arrays.\n\nIn general all operations are (highly) unsafe, no\nbounds-checking or other sanity-checking is performed.\nOperations are aimed toward efficiency as much as possible.\nGoals of the library are to have arrays according to three\nideas: immutable/mutable arrays, strict/lazy arrays,\nzero-based/lower-bound arrays. Zero-based arrays save one\naddition on each access if the lower bound or the array is\nalways zero.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.primitive)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.repa)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }