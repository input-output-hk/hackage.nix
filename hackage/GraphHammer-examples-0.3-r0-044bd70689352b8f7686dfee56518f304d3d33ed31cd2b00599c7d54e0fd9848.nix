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
      identifier = { name = "GraphHammer-examples"; version = "0.3"; };
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
      "library" = { buildable = true; };
      exes = {
        "TriangleCountTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."Graph500" or (errorHandler.buildDepError "Graph500"))
            (hsPkgs."GraphHammer" or (errorHandler.buildDepError "GraphHammer"))
            ];
          buildable = true;
          };
        "ClusteringCoefficientTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."Graph500" or (errorHandler.buildDepError "Graph500"))
            (hsPkgs."GraphHammer" or (errorHandler.buildDepError "GraphHammer"))
            ];
          buildable = false;
          };
        };
      };
    }