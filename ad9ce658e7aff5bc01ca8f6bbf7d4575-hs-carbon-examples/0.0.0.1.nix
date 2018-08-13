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
      specVersion = "1.8";
      identifier = {
        name = "hs-carbon-examples";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "cholmgreen@gmail.com";
      author = "Casper M. H. Holmgreen";
      homepage = "";
      url = "";
      synopsis = "Example Monte Carlo simulations implemented with Carbon";
      description = "Example Monte Carlo simulations implemented with Carbon";
      buildType = "Simple";
    };
    components = {
      exes = {
        "PiExample" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hs-carbon)
            (hsPkgs.tf-random)
          ];
        };
        "IntegralExample" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hs-carbon)
            (hsPkgs.tf-random)
          ];
        };
        "TransportExample" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hs-carbon)
            (hsPkgs.gloss)
            (hsPkgs.tf-random)
            (hsPkgs.deepseq)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }