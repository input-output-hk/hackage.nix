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
      identifier = { name = "barlow-lens"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Danila Danko, kana";
      maintainer = "Danila Danko, kana";
      author = "Danila Danko, kana";
      homepage = "https://github.com/deemp/haskell-barlow-lens#readme";
      url = "";
      synopsis = "lens via string literals";
      description = "Please see the README on GitHub at <https://github.com/deemp/haskell-barlow-lens#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
        ];
        buildable = true;
      };
      tests = {
        "barlow-lens" = {
          depends = [
            (hsPkgs."barlow-lens" or (errorHandler.buildDepError "barlow-lens"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "readme" = {
          depends = [
            (hsPkgs."barlow-lens" or (errorHandler.buildDepError "barlow-lens"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          ];
          buildable = true;
        };
      };
    };
  }