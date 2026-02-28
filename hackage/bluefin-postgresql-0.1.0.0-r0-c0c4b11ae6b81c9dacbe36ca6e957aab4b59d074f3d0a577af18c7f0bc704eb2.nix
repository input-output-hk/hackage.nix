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
    flags = { enable-pool = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "bluefin-postgresql"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright(c) Frederick Pringle 2025";
      maintainer = "frederick.pringle@fpringle.com";
      author = "Frederick Pringle";
      homepage = "https://github.com/fpringle/bluefin-postgresql";
      url = "";
      synopsis = "bluefin support for mid-level PostgreSQL operations.";
      description = "See the README for an overview, or the documentation in 'Bluefin.PostgreSQL'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bluefin" or (errorHandler.buildDepError "bluefin"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
        ] ++ pkgs.lib.optional (flags.enable-pool) (hsPkgs."unliftio-pool" or (errorHandler.buildDepError "unliftio-pool"));
        buildable = true;
      };
    };
  }