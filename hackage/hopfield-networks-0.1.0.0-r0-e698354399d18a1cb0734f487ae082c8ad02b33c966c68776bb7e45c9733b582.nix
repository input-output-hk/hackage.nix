{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hopfield-networks"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "andrew+cabal@tullo.ch";
      author = "Andrew Tulloch";
      homepage = "https://github.com/ajtulloch/hopfield-networks";
      url = "";
      synopsis = "Hopfield Networks for unsupervised learning in Haskell";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.matrix)
          (hsPkgs.MonadRandom)
          (hsPkgs.split)
          ];
        };
      exes = {
        "hopfield_demonstration" = {
          depends = [
            (hsPkgs.hopfield-networks)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
            (hsPkgs.matrix)
            (hsPkgs.MonadRandom)
            (hsPkgs.split)
            ];
          };
        };
      tests = {
        "hopfield_test" = {
          depends = [
            (hsPkgs.hopfield-networks)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
            (hsPkgs.matrix)
            (hsPkgs.MonadRandom)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework)
            ];
          };
        };
      };
    }