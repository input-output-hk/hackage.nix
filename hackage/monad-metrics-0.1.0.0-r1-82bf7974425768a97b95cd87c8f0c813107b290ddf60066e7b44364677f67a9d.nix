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
        name = "monad-metrics";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2017 Seller Labs, 2016 Taylor Fausak";
      maintainer = "matt@sellerlabs.com";
      author = "Matthew Parsons";
      homepage = "https://github.com/parsonsmatt/monad-metrics#readme";
      url = "";
      synopsis = "A convenient wrapper around EKG metrics";
      description = "A convenient wrapper for collecting application metrics. Please see the README.md for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.clock)
          (hsPkgs.containers)
          (hsPkgs.ekg-core)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
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