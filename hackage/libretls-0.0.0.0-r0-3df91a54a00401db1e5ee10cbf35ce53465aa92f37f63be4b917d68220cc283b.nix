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
      specVersion = "2.2";
      identifier = { name = "libretls"; version = "0.0.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "carter at wellposed dot com";
      author = "Carter Tazio Schonwald";
      homepage = "https://github.com/cartazio/libressl-hs";
      url = "";
      synopsis = "libtls bindings";
      description = "A thin wrapper about the libtls wrapper of libressl";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."monad-ste" or (errorHandler.buildDepError "monad-ste"))
        ];
        pkgconfig = pkgs.lib.optional (system.isLinux) (pkgconfPkgs."libtls" or (errorHandler.pkgConfDepError "libtls"));
        buildable = true;
      };
      tests = {
        "hunit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."libressl" or (errorHandler.buildDepError "libressl"))
          ];
          buildable = true;
        };
      };
    };
  }