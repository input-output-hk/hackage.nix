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
        name = "dph-prim-seq";
        version = "0.7.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@cse.unsw.edu.au>";
      author = "The DPH Team";
      homepage = "http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell";
      url = "";
      synopsis = "Data Parallel Haskell segmented arrays. (sequential implementation)";
      description = "Sequential array data type and stream fuctions, along with a\nsequential reference implementation of the segmented array\nAPI defined in @dph-prim-interface@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          (hsPkgs.ghc-prim)
          (hsPkgs.dph-base)
          (hsPkgs.dph-prim-interface)
        ];
      };
    };
  }