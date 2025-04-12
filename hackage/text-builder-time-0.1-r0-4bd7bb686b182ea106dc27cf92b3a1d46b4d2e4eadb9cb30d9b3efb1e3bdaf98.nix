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
      identifier = { name = "text-builder-time"; version = "0.1"; };
      license = "MIT";
      copyright = "(c) 2025, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/text-builder-time";
      url = "";
      synopsis = "Various formats for \"time\" in terms of \"text-builder\"";
      description = "Part of the \"text-builder\" ecosystem, providing rendering to various formats for the types of the \"time\" library.\nCurrently it only provides support for ISO-8601.\nOther formats are to be added later.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }