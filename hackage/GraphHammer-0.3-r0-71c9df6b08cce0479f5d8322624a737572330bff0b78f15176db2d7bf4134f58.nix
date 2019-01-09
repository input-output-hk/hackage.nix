{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "GraphHammer"; version = "0.3"; };
      license = "GPL-2.0-only";
      copyright = "2013, Parallel Scientific Labs, LLC";
      maintainer = "alexander.vershilov@parsci.com";
      author = "serguey.zefirov@parsci.com";
      homepage = "";
      url = "";
      synopsis = "GraphHammer Haskell graph analyses framework inspired by STINGER.";
      description = "GraphHammer is a graph analyses framework. See\n\"GraphHammer.SimplestParallel\" for library documentation. Examples\nexists in GraphHammer-examples package: see\n\"GraphHammer.VertexDegree\", \"GraphHammer.TriangleCount\",\n\"GraphHammer.ClusteringCoefficients\" for examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.Graph500)
          ];
        };
      };
    }