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
      identifier = { name = "music-pitch"; version = "1.8.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Musical pitch representation.";
      description = "This package provides various representations of musical pitch.\n\nThis library is part of the Music Suite, see\n<http://music-suite.github.io>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."music-pitch-literal" or (errorHandler.buildDepError "music-pitch-literal"))
          (hsPkgs."data-interval" or (errorHandler.buildDepError "data-interval"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."vector-space-points" or (errorHandler.buildDepError "vector-space-points"))
          (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
          (hsPkgs."positive" or (errorHandler.buildDepError "positive"))
          (hsPkgs."type-unary" or (errorHandler.buildDepError "type-unary"))
          ];
        buildable = true;
        };
      };
    }