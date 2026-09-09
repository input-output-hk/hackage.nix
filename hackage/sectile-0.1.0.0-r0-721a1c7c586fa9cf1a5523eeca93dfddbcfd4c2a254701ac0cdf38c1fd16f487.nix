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
      identifier = { name = "sectile"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "foss@difolco.dev";
      author = "Gautier DI FOLCO";
      homepage = "https://github.com/blackheaven/sectile";
      url = "";
      synopsis = "Composable status line builder";
      description = "Composable status line builder.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ede" or (errorHandler.buildDepError "ede"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-regex-pcre" or (errorHandler.buildDepError "lens-regex-pcre"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      exes = {
        "sectile" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sectile" or (errorHandler.buildDepError "sectile"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          ];
          buildable = true;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."sectile" or (errorHandler.buildDepError "sectile"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
          ];
          buildable = true;
        };
      };
    };
  }