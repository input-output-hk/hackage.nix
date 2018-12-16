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
      specVersion = "1.2";
      identifier = {
        name = "plugins";
        version = "1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/hs-plugins";
      url = "";
      synopsis = "Dynamic linking for Haskell and C objects";
      description = "Dynamic linking and runtime evaluation of Haskell,\nand C, including dependency chasing and package resolution.\n\nDescribed in the paper:\n/Plugging Haskell In/, <http://www.cse.unsw.edu.au/~dons/papers/PSSC04.html>";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.haskell-src)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.directory)
          (hsPkgs.random)
          (hsPkgs.process)
          (hsPkgs.ghc)
        ];
      };
    };
  }