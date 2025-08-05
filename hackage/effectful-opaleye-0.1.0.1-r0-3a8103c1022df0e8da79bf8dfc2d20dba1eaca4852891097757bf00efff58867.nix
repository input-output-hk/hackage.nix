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
      specVersion = "3.0";
      identifier = { name = "effectful-opaleye"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright(c) Frederick Pringle 2025";
      maintainer = "frederick.pringle@fpringle.com";
      author = "Frederick Pringle";
      homepage = "https://github.com/fpringle/effectful-postgresql";
      url = "";
      synopsis = "effectful support for high-level PostgreSQL operations via Opaleye.";
      description = "See the README for an overview, or the documentation in 'Effectful.Opaleye'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."effectful-th" or (errorHandler.buildDepError "effectful-th"))
          (hsPkgs."opaleye" or (errorHandler.buildDepError "opaleye"))
          (hsPkgs."product-profunctors" or (errorHandler.buildDepError "product-profunctors"))
          (hsPkgs."effectful-postgresql" or (errorHandler.buildDepError "effectful-postgresql"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
        ];
        buildable = true;
      };
    };
  }