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
      identifier = { name = "stock-aeson"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "baldur.blondal@iohk.io";
      author = "Baldur Blöndal";
      homepage = "";
      url = "";
      synopsis = "Derive ToJSON / FromJSON via the stock plugin";
      description = "The @stock@ plugin provides a datatype for deriving and synthesising\ninstances at compile time. @stock-aeson@ extends the @stock@ with\nsupport for @FromJSON@ and @ToJSON@, and their higher-kinded variants.\n\n> {-# options_ghc -fplugin Stock #-}\n> \n> {-# language DerivingVia #-}\n> \n> import Stock\n> import Stock.Aeson\n> \n> data T = MkT Int String\n>   deriving (ToJSON, FromJSON) via Stock T\n\nThe wire format reproduces aeson's @genericToJSON \\/ genericParseJSON\ndefaultOptions@ exactly (a self-inverse tagged object,\n@{ \"tag\": \"Con\", \"contents\": [field0, …] }@), so @stock-aeson@ is a drop-in\nfor @deriving stock Generic@ + @deriving anyclass (ToJSON, FromJSON)@.\n\n> instance DeriveStock  ToJSON     ..\n> instance DeriveStock  FromJSON   ..\n> instance DeriveStock1 ToJSON1    ..\n> instance DeriveStock1 FromJSON1  ..\n> instance DeriveStock2 ToJSON2    ..\n> instance DeriveStock2 FromJSON2  ..\n\nThe lifted variants derive the same zero-cost way (no @Generic@ at runtime):\nparameter fields route through the supplied per-parameter encoders\\/parsers, so\nthe bytes still match @aeson@'s generic deriving.\n\n> data F a   = MkF a [a]   deriving (ToJSON1, FromJSON1) via Stock1 F\n> data P a b = MkP a b [b] deriving (ToJSON2, FromJSON2) via Stock2 P\n\n(@aeson@ has no @Generic2@; the arity-2 encoding is defined to coincide with\nthe value encoding when both per-parameter encoders are @toJSON@.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
            (hsPkgs."stock-aeson" or (errorHandler.buildDepError "stock-aeson"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }