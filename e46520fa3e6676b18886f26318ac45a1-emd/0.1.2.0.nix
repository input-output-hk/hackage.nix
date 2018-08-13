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
        name = "emd";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/emd#readme";
      url = "";
      synopsis = "Empirical Mode Decomposition and Hilbert-Huang Transform";
      description = "Please see the README on GitHub at <https://github.com/mstksg/emd#readme>";
      buildType = "Simple";
    };
    components = {
      "emd" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.finite-typelits)
          (hsPkgs.ghc-typelits-knownnat)
          (hsPkgs.ghc-typelits-natnormalise)
          (hsPkgs.transformers)
          (hsPkgs.typelits-witnesses)
          (hsPkgs.vector)
          (hsPkgs.vector-sized)
        ];
      };
      tests = {
        "emd-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.emd)
          ];
        };
      };
    };
  }