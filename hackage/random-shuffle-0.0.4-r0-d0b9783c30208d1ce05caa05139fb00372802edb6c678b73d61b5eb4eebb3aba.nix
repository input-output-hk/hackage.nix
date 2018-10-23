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
        name = "random-shuffle";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Oleg Kiselyov 2001\nManlio Perillo 2009";
      maintainer = "Manlio Perillo <manlio.perillo@gmail.com>";
      author = "Oleg Kiselyov, Manlio Perillo, Andras Slemmer";
      homepage = "";
      url = "";
      synopsis = "Random shuffle implementation.";
      description = "Random shuffle implementation, on immutable lists.\nBased on `perfect shuffle' implementation by Oleg Kiselyov,\navailable on http://okmij.org/ftp/Haskell/perfect-shuffle.txt";
      buildType = "Simple";
    };
    components = {
      "random-shuffle" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.MonadRandom)
        ];
      };
    };
  }