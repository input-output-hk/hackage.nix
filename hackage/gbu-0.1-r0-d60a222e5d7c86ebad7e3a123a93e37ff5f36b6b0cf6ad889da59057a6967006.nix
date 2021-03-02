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
      specVersion = "1.2";
      identifier = { name = "gbu"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daneel S. Yaitskov <rtfm.rtfm.rtfm@gmail.com>";
      author = "Daneel S. Yaitskov <rtfm.rtfm.rtfm@gmail.com>";
      homepage = "http://www.daneel0yaitskov.000space.com";
      url = "";
      synopsis = "planar graph embedding into a plane";
      description = "A library realizes one of the graph visualization process's\nsteps - graph embedding into a plane. The job of the step is\nsuch to order nodes' edges that there are capabilities to\ndraw them without any intersections.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."Graphalyze" or (errorHandler.buildDepError "Graphalyze"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          ];
        buildable = true;
        };
      };
    }