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
      specVersion = "2.4";
      identifier = { name = "hedgehog-lens"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2021 Mission Valley Software LLC, 2022 Solomon Bothwell";
      maintainer = "ssbothwell@gmail.com";
      author = "solomon";
      homepage = "https://github.com/solomon-b/hedgehog-lens";
      url = "";
      synopsis = "Hedgehog properties for lens laws.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }