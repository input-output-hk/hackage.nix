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
      identifier = { name = "engine-io-snap"; version = "1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk";
      author = "Oliver Charles";
      homepage = "http://github.com/ocharles/engine.io";
      url = "";
      synopsis = "";
      description = "This package provides an @engine-io@ @ServerAPI@ that is compatible with\n<http://snapframework.com Snap>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."engine-io" or (errorHandler.buildDepError "engine-io"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."websockets-snap" or (errorHandler.buildDepError "websockets-snap"))
          ];
        buildable = true;
        };
      };
    }