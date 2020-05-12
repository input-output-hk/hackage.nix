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
      identifier = { name = "pagarme"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "diogo@biazus.me";
      author = "Diogo Biazus";
      homepage = "https://github.com/diogob/pagarme_haskell";
      url = "";
      synopsis = "Pagarme API wrapper";
      description = "Pagarme API wrapper";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "testbin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pagarme" or (errorHandler.buildDepError "pagarme"))
            (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }