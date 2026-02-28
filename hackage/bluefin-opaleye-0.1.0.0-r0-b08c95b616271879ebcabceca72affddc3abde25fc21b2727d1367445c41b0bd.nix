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
      identifier = { name = "bluefin-opaleye"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright(c) Frederick Pringle 2025";
      maintainer = "frederick.pringle@fpringle.com";
      author = "Frederick Pringle";
      homepage = "https://github.com/fpringle/bluefin-postgresql";
      url = "";
      synopsis = "bluefin support for high-level PostgreSQL operations via Opaleye.";
      description = "See the README for an overview, or the documentation in 'Bluefin.Opaleye'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bluefin" or (errorHandler.buildDepError "bluefin"))
          (hsPkgs."opaleye" or (errorHandler.buildDepError "opaleye"))
          (hsPkgs."product-profunctors" or (errorHandler.buildDepError "product-profunctors"))
          (hsPkgs."bluefin-postgresql" or (errorHandler.buildDepError "bluefin-postgresql"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ];
        buildable = true;
      };
    };
  }