{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "dph-lifted-base";
        version = "0.6.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@cse.unsw.edu.au>";
      author = "The DPH Team";
      homepage = "http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell";
      url = "";
      synopsis = "Data Parallel Haskell common definitions used by other dph-lifted packages.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "dph-lifted-base" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.template-haskell)
          (hsPkgs.dph-base)
          (hsPkgs.dph-prim-par)
          (hsPkgs.vector)
          (hsPkgs.pretty)
          (hsPkgs.containers)
        ];
      };
    };
  }