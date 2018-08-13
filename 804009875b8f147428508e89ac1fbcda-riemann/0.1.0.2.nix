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
        name = "riemann";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "2013 Joseph Abrahamson, 2015 Trevis Elser";
      maintainer = "trevis@clickscape.com";
      author = "Joseph Abrahamson, Trevis Elser";
      homepage = "https://github.com/telser/riemann-hs";
      url = "";
      synopsis = "A Riemann client for Haskell";
      description = "Very simple event sending to a Riemann server.";
      buildType = "Simple";
    };
    components = {
      "riemann" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.protobuf)
          (hsPkgs.transformers)
          (hsPkgs.either)
          (hsPkgs.errors)
          (hsPkgs.lens)
          (hsPkgs.time)
          (hsPkgs.data-default)
          (hsPkgs.cereal)
        ];
      };
      tests = {
        "property" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.either)
            (hsPkgs.errors)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.riemann)
          ];
        };
        "unit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.either)
            (hsPkgs.errors)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.riemann)
          ];
        };
      };
    };
  }