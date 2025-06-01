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
      identifier = {
        name = "text-builder-lawful-conversions";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "(c) 2025, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/text-builder-lawful-conversions";
      url = "";
      synopsis = "Orphan instances of \"lawful-conversions\" for \"text-builder\"";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lawful-conversions" or (errorHandler.buildDepError "lawful-conversions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          (hsPkgs."text-builder-core" or (errorHandler.buildDepError "text-builder-core"))
        ];
        buildable = true;
      };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lawful-conversions" or (errorHandler.buildDepError "lawful-conversions"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
            (hsPkgs."text-builder-lawful-conversions" or (errorHandler.buildDepError "text-builder-lawful-conversions"))
          ];
          buildable = true;
        };
      };
    };
  }