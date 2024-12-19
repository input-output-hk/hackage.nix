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
      identifier = { name = "tasty-golden-extra"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "geeks@bellroy.com";
      author = "Bellroy";
      homepage = "https://github.com/bellroy/tasty-golden-extra";
      url = "";
      synopsis = "Additional golden test helpers for the tasty-golden package";
      description = "A library providing additional golden test helpers for the\n@tasty-golden@ package.  These helpers are useful for testing\nthe output of functions that return @String@s, @Show@, @ToJSON@ or @ToYAML@\ninstances.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-diff" or (errorHandler.buildDepError "aeson-diff"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
          (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        buildable = true;
      };
    };
  }