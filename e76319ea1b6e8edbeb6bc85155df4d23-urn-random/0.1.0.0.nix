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
      specVersion = "1.10";
      identifier = {
        name = "urn-random";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Copyright © 2016–2017 Leonidas Lampropoulos, Antal Spector-Zabusky, and Kenneth Foner";
      maintainer = "Antal Spector-Zabusky <antal.b.sz@gmail.com>";
      author = "Leonidas Lampropoulos, Antal Spector-Zabusky, Kenneth Foner";
      homepage = "https://github.com/antalsz/urn-random";
      url = "";
      synopsis = "A package for updatable discrete distributions";
      description = "This package implements /urns/, which are a simple tree-based data structure\nthat supports sampling from and updating discrete probability distributions in\nlogarithmic time.  The details are presented in the paper “Ode on a Random Urn\n(Functional Pearl)”, by Leonidas Lampropoulos, Antal Spector-Zabusky, and\nKenneth Foner, published in Haskell Symposium ’17.";
      buildType = "Simple";
    };
    components = {
      "urn-random" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.MonadRandom)
          (hsPkgs.QuickCheck)
          (hsPkgs.transformers)
          (hsPkgs.integer-gmp)
        ];
      };
    };
  }