{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "benchpress"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johan.tibell@gmail.com";
      author = "Johan Tibell";
      homepage = "";
      url = "";
      synopsis = "Micro-benchmarking with detailed statistics.";
      description = "Runs benchmarks and produces detailed reports\nthat includes common statistical measures like\nmean execution time but also groups execution\ntimes into percentiles.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.time) ]; };
      };
    }