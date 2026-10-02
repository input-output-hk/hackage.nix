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
      specVersion = "2.4";
      identifier = { name = "salmon-core"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022-2026 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://lucasdicioccio.github.io/salmon/";
      url = "";
      synopsis = "Idempotent operations as DAGs: the core graph and evaluation primitives.";
      description = "Salmon expresses infrastructure, provisioning and CI/CD operations as DAGs of idempotent operations with uniform up/down/check semantics. This package holds the core algebraic-graph (OpGraph, Track, Eval) representation, with minimal dependencies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }