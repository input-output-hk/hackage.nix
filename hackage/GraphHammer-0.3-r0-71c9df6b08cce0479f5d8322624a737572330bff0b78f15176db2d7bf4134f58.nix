{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."Graph500" or (errorHandler.buildDepError "Graph500"))
          ];
        buildable = true;
        };
      };
    }