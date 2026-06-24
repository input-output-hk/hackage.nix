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
      identifier = { name = "stock-profunctors"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "baldur.blondal@iohk.io";
      author = "Baldur Blöndal";
      homepage = "";
      url = "";
      synopsis = "Derive Profunctor via the stock plugin";
      description = " A companion for the <https://hackage.haskell.org/package/stock stock> plugin: depend on @stock-profunctors@ and you can\n write @data P a b = … deriving Profunctor via Stock2 P@.  It is /not/ a plugin\n, it registers an @instance DeriveStock2 Profunctor@ (on the \"Stock.Derive\"\n SDK) that the <https://hackage.haskell.org/package/stock stock> plugin discovers and runs, so no extra @-fplugin@ is\n needed.\n\n @Profunctor@ is the @[Contra, Co]@ case of the plugin's n-ary variance functor\n engine, the same recursion as @Functor@ \\/ @Contravariant@ \\/ @Bifunctor@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
            (hsPkgs."stock-profunctors" or (errorHandler.buildDepError "stock-profunctors"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          ];
          buildable = true;
        };
      };
    };
  }