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
      identifier = { name = "identicon-style-squares"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "francygazz@gmail.com";
      author = "Francesco Gazzetta";
      homepage = "https://github.com/fgaz/identicon-styles";
      url = "";
      synopsis = "Squares style for the identicon package";
      description = "An identicon style with colored squares, similar to the\ngithub default avatars. The number of square in a single\nidenticon can be configured.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."identicon" or (errorHandler.buildDepError "identicon"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."polyvariadic" or (errorHandler.buildDepError "polyvariadic"))
          ];
        buildable = true;
        };
      tests = {
        "squares" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."identicon" or (errorHandler.buildDepError "identicon"))
            (hsPkgs."identicon-style-squares" or (errorHandler.buildDepError "identicon-style-squares"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            ];
          buildable = true;
          };
        };
      };
    }