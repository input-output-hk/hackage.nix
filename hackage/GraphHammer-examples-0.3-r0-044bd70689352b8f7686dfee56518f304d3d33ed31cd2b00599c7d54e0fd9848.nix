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
      specVersion = "1.6";
      identifier = {
        name = "GraphHammer-examples";
        version = "0.3";
      };
      license = "GPL-2.0-only";
      copyright = "2013, Parallel Scientific Labs, LLC";
      maintainer = "alexander.vershilov@parsci.com";
      author = "serguey.zefirov@parsci.com";
      homepage = "";
      url = "";
      synopsis = "Test harness for TriangleCount analysis.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {};
      exes = {
        "TriangleCountTest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.array)
            (hsPkgs.Graph500)
            (hsPkgs.GraphHammer)
          ];
        };
        "ClusteringCoefficientTest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.array)
            (hsPkgs.Graph500)
            (hsPkgs.GraphHammer)
          ];
        };
      };
    };
  }