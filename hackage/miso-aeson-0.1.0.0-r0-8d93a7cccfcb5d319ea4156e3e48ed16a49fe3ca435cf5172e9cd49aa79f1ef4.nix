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
    flags = { interactive = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "miso-aeson"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "haskell-miso @ 2026";
      maintainer = "code@dmj.io";
      author = "dmjio";
      homepage = "";
      url = "";
      synopsis = "JSON conversion library";
      description = "Convert between Miso and Aeson types";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
        ];
        buildable = true;
      };
    };
  }