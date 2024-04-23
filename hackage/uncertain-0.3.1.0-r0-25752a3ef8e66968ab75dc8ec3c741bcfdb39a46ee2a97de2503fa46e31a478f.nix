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
      specVersion = "1.10";
      identifier = { name = "uncertain"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2016";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/uncertain";
      url = "";
      synopsis = "Manipulating numbers with inherent experimental/measurement uncertainty";
      description = "See <https://github.com/mstksg/uncertain/blob/master/README.md README.md>.\n\nDocumentation maintained at <https://mstksg.github.io/uncertain>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
        ];
        buildable = true;
      };
    };
  }