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
      specVersion = "3.4";
      identifier = { name = "effectful-zoo"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2024 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/effectful-zoo#readme";
      url = "";
      synopsis = "Effectful effects for testing";
      description = "See https://hackage.haskell.org/package/effectful-zoo/docs/effectful-zoo.html";
      buildType = "Simple";
    };
    components = {
      sublibs = {
        "core" = {
          depends = [
            (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
          ];
          buildable = true;
        };
        "datalog" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."effectful-plugin" or (errorHandler.buildDepError "effectful-plugin"))
            (hsPkgs."effectful-zoo".components.sublibs.core or (errorHandler.buildDepError "effectful-zoo:core"))
            (hsPkgs."hw-prelude" or (errorHandler.buildDepError "hw-prelude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "hedgehog" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."effectful-plugin" or (errorHandler.buildDepError "effectful-plugin"))
            (hsPkgs."effectful-zoo".components.sublibs.core or (errorHandler.buildDepError "effectful-zoo:core"))
            (hsPkgs."effectful-zoo".components.sublibs.log or (errorHandler.buildDepError "effectful-zoo:log"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hw-prelude" or (errorHandler.buildDepError "hw-prelude"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
        };
        "log" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."effectful-plugin" or (errorHandler.buildDepError "effectful-plugin"))
            (hsPkgs."effectful-zoo".components.sublibs.core or (errorHandler.buildDepError "effectful-zoo:core"))
            (hsPkgs."hw-prelude" or (errorHandler.buildDepError "hw-prelude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "effectful-zoo-test" = {
          depends = [
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."effectful-zoo".components.sublibs.core or (errorHandler.buildDepError "effectful-zoo:core"))
            (hsPkgs."effectful-zoo".components.sublibs.hedgehog or (errorHandler.buildDepError "effectful-zoo:hedgehog"))
            (hsPkgs."effectful-zoo".components.sublibs.log or (errorHandler.buildDepError "effectful-zoo:log"))
            (hsPkgs."hw-prelude" or (errorHandler.buildDepError "hw-prelude"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
      };
    };
  }