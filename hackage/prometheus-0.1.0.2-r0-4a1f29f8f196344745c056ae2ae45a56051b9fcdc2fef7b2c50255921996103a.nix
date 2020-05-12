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
      specVersion = "1.10";
      identifier = { name = "prometheus"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "http://github.com/LukeHoersten/prometheus#readme";
      url = "";
      synopsis = "Prometheus Haskell Client";
      description = "Idiomatic Haskell client for Prometheus.io monitoring.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }