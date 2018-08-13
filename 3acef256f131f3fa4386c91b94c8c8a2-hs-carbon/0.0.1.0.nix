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
        name = "hs-carbon";
        version = "0.0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "cholmgreen@gmail.com";
      author = "Casper M. H. Holmgreen";
      homepage = "";
      url = "";
      synopsis = "A Haskell framework for parallel monte carlo simulations";
      description = "hs-carbon is a PRNG-agnostic Haskell framework for running monte-carlo\nsimulations. The library will provide several \"skeletons\" for abstracting\naway common usage patterns.";
      buildType = "Simple";
    };
    components = {
      "hs-carbon" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.parallel)
          (hsPkgs.deepseq)
        ];
      };
    };
  }