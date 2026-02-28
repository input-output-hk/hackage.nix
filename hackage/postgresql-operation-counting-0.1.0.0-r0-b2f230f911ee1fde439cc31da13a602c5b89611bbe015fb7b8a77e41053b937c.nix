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
      identifier = {
        name = "postgresql-operation-counting";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright(c) Frederick Pringle 2026";
      maintainer = "frederick.pringle@fpringle.com";
      author = "Frederick Pringle";
      homepage = "https://github.com/fpringle/postgresql-operation-counting";
      url = "";
      synopsis = "Track and render a tally of which PostgreSQL operations have been performed.";
      description = "For example usage, see [effectful-opaleye](https://hackage.haskell.org/package/effectful-opaleye/docs/Effectful-Opaleye-Count.html)\nor [bluein-opaleye](https://hackage.haskell.org/package/bluefin-opaleye/docs/Bluefin-Opaleye-Count.html).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ];
        buildable = true;
      };
    };
  }