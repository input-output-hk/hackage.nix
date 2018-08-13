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
      specVersion = "1.2";
      identifier = {
        name = "benchpress";
        version = "0.2.2.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@willsewell.com";
      author = "Johan Tibell";
      homepage = "https://github.com/WillSewell/benchpress";
      url = "";
      synopsis = "Micro-benchmarking with detailed statistics.";
      description = "Benchmarks actions and produces statistics\nsuch as min, mean, median, standard deviation,\nand max execution time.  Also computes\nexecution time percentiles.  Comes with\nfunctions to pretty-print the results.";
      buildType = "Simple";
    };
    components = {
      "benchpress" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.time)
        ];
      };
    };
  }