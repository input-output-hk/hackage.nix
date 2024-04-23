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
      identifier = { name = "currency-codes"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "(c) 2017 Chordify";
      maintainer = "Matthias Benkort <matthias@chordify.net>";
      author = "Chordify";
      homepage = "https://gitlab.com/chordify/currency-codes";
      url = "";
      synopsis = "ISO-4217 Currency Codes";
      description = "ISO-4217 Currency Codes";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."swagger2" or (errorHandler.buildDepError "swagger2"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }