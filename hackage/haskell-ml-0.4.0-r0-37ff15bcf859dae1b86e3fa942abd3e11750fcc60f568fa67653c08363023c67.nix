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
      specVersion = "1.10";
      identifier = {
        name = "haskell-ml";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 David Banas";
      maintainer = "capn.freako@gmail.com";
      author = "David Banas";
      homepage = "";
      url = "";
      synopsis = "Machine learning in Haskell";
      description = "Machine learning in Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.hmatrix)
          (hsPkgs.MonadRandom)
          (hsPkgs.singletons)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "iris" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell-ml)
            (hsPkgs.hmatrix)
            (hsPkgs.random-shuffle)
          ];
        };
      };
      tests = {
        "fcnTest1" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell-ml)
            (hsPkgs.MonadRandom)
          ];
        };
      };
    };
  }