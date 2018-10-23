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
        name = "rivers";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2011, 2012 Drew Day";
      maintainer = "Drew Day <drewday@gmail.com>";
      author = "Drew Day <drewday@gmail.com>";
      homepage = "https://github.com/d-rive/rivers";
      url = "";
      synopsis = "Rivers are like Streams, but different.";
      description = "This library intends to unify, classify, demonstrate, and promote\nthe use, abuse, and exploration of Streams and other infinite (co)data\ntypes. Many other languages have substantial feature overlap with Haskell,\nbut Streams and friends proivde excellent demonstrations of Haskell features\nlike laziness.\n\nRivers are not currently defined in this package, because they are still ill-defined.\nThe goal of this package in the meantime is, therefore, is to focus on Streams.\n\nAnother goal of this package is to demonstrate the ecosystem of Rivers (and Streams),\nhow identical (and indeed sometimes isomorphic) streams can be constucted in many\ndifferent ways. OEIS (<http://www.oeis.org>) is used to verify the correctness\nof numeric streams, where possible.";
      buildType = "Simple";
    };
    components = {
      "rivers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lazysmallcheck)
          (hsPkgs.QuickCheck)
          (hsPkgs.oeis)
        ];
      };
    };
  }