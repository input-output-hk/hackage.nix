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
        version = "0.2.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2010-2012";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Efficient multidimensional arrays";
      description = "This library provides efficient multidimensional arrays.\n\nIn general all operations are (highly) unsafe, no\nbounds-checking or other sanity-checking is performed.\nOperations are aimed toward efficiency as much as possible.\nGoals of the library are to have arrays according to three\nideas: immutable/mutable arrays, strict/lazy arrays,\nzero-based/lower-bound arrays. Zero-based arrays save one\naddition on each access if the lower bound or the array is\nalways zero.\n\nWe have forked two repa modules: Shape and Index.\n\nUnboxed vectors are available with implementations based on\n\"primitive\" and \"vector\". For some reason, we loose 50%\nperformance with RNAfold if we use \"vector\" as the underlying\ndata type, while Nussinov78 does not suffer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.vector)
        ];
      };
    };
  }