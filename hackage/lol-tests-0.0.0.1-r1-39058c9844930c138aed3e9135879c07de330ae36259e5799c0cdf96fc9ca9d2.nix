{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lol-tests"; version = "0.0.0.1"; };
      license = "GPL-2.0-only";
      copyright = "Eric Crockett, Chris Peikert";
      maintainer = "Eric Crockett <ecrockett0@gmail.com>";
      author = "Eric Crockett <ecrockett0@gmail.com>, Chris Peikert <cpeikert@alum.mit.edu>";
      homepage = "https://github.com/cpeikert/Lol";
      url = "";
      synopsis = "A library for testing <https://hackage.haskell.org/package/lol Λ ∘ λ>.";
      description = "This library contains code to test <https://hackage.haskell.org/package/lol Λ ∘ λ (Lol)>.\nIt is designed so that third-party tensors can be easily tested using the same framework.\nFor examples of how to use this library, see the tests for\n<https://hackage.haskell.org/package/lol-cpp lol-cpp>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lol)
          (hsPkgs.MonadRandom)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-quickcheck2)
          (hsPkgs.QuickCheck)
          ];
        };
      tests = {
        "test-lol" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lol)
            (hsPkgs.lol-tests)
            (hsPkgs.test-framework)
            ];
          };
        };
      };
    }