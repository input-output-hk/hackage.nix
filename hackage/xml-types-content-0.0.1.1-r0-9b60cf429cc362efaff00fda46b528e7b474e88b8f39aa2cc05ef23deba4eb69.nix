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
      identifier = { name = "xml-types-content"; version = "0.0.1.1"; };
      license = "MIT";
      copyright = "(c) 2024 Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/xml-types-content";
      url = "";
      synopsis = "Utilities for dealing with Content-values of \"xml-types\"";
      description = "The `Content` type in \"xml-types\" is tricky and naive usage of it can lead to bugs.\nYou cannot simply construct `ContentText` from any textual value.\nYou must encode certain character ranges via entities.\nThis library does that for you by providing mappers from `Text` to `[Content]`.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
        ];
        buildable = true;
      };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lawful-conversions" or (errorHandler.buildDepError "lawful-conversions"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
            (hsPkgs."xml-types-content" or (errorHandler.buildDepError "xml-types-content"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }