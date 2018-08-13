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
        name = "monad-metrics";
        version = "0.2.1.2";
      };
      license = "MIT";
      copyright = "2018 Matt Parsons, 2017 Seller Labs, 2016 Taylor Fausak";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matthew Parsons";
      homepage = "https://github.com/parsonsmatt/monad-metrics#readme";
      url = "";
      synopsis = "A convenient wrapper around EKG metrics";
      description = "A convenient wrapper for collecting application metrics. Please see the README.md for more information.";
      buildType = "Simple";
    };
    components = {
      "monad-metrics" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.clock)
          (hsPkgs.ekg-core)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.microlens)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "monad-metrics-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.monad-metrics)
          ];
        };
      };
    };
  }