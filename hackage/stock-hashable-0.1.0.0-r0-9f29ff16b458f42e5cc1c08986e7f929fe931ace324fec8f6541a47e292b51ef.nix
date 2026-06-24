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
      identifier = { name = "stock-hashable"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "baldur.blondal@iohk.io";
      author = "Baldur Blöndal";
      homepage = "";
      url = "";
      synopsis = "Derive Hashable via the stock plugin";
      description = "The @stock@ plugin provides a datatype for deriving and synthesising\ninstances at compile time. @stock-hashable@ extends the @stock@ with\nsupport for @Hashable@ and higher-kinded variants.\n\n> {-# options_ghc -fplugin Stock #-}\n> \n> {-# language DerivingVia #-}\n> \n> import Stock\n> import Stock.Hashable\n> \n> data Pair a b = Pair a b\n>  deriving (Eq,  Hashable)  via Stock  (Pair a b)\n>  deriving (Eq1, Hashable1) via Stock1 (Pair a)\n>  deriving (Eq2, Hashable2) via Stock2 Pair\n\n@stock-hashable@ provides three instances, that signal to the plugin\nhow to derive @Hashable@.\n\n> instance DeriveStock  Hashable  ..\n> instance DeriveStock1 Hashable1 ..\n> instance DeriveStock2 Hashable2 ..";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
            (hsPkgs."stock-hashable" or (errorHandler.buildDepError "stock-hashable"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
          buildable = true;
        };
        "inspection" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
            (hsPkgs."stock-hashable" or (errorHandler.buildDepError "stock-hashable"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
          ];
          buildable = if compiler.isGhc && compiler.version.ge "9.14"
            then false
            else true;
        };
      };
    };
  }