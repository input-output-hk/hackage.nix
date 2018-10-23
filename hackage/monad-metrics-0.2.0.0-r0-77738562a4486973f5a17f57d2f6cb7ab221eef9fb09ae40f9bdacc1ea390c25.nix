{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "monad-metrics";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "2017 Seller Labs, 2016 Taylor Fausak";
      maintainer = "matt@sellerlabs.com";
      author = "Matthew Parsons";
      homepage = "https://github.com/sellerlabs/monad-metrics#readme";
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
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.microlens)
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