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
      specVersion = "1.12";
      identifier = { name = "sandwich-hedgehog"; version = "0.1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2024 Tom McLaughlin";
      maintainer = "tom@codedown.io";
      author = "Tom McLaughlin";
      homepage = "https://codedownio.github.io/sandwich";
      url = "";
      synopsis = "Sandwich integration with Hedgehog";
      description = "Please see the <https://codedownio.github.io/sandwich/docs/extensions/sandwich-hedgehog documentation>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."sandwich" or (errorHandler.buildDepError "sandwich"))
          (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."wl-pprint-annotated" or (errorHandler.buildDepError "wl-pprint-annotated"))
        ];
        buildable = true;
      };
      tests = {
        "sandwich-hedgehog-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."sandwich" or (errorHandler.buildDepError "sandwich"))
            (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."wl-pprint-annotated" or (errorHandler.buildDepError "wl-pprint-annotated"))
          ];
          buildable = true;
        };
      };
    };
  }