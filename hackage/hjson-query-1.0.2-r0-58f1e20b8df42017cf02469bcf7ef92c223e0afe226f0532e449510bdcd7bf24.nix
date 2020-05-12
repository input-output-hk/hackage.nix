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
      identifier = { name = "hjson-query"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Yuriy Iskra";
      maintainer = "";
      author = "YuriyIskra";
      homepage = "";
      url = "";
      synopsis = "library for querying from JSON";
      description = "library(HXT-like) for querying from JSON";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hjson" or (errorHandler.buildDepError "hjson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }