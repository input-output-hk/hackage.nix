{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "dph-seq";
        version = "0.5.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@cse.unsw.edu.au>";
      author = "The DPH Team";
      homepage = "http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell";
      url = "";
      synopsis = "Data structures for Nested Data-Parallel Haskell.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "dph-seq" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.template-haskell)
          (hsPkgs.dph-base)
          (hsPkgs.dph-prim-seq)
        ];
      };
    };
  }