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
      identifier = { name = "aeson-unqualified-ast"; version = "1.0.0.3"; };
      license = "MIT";
      copyright = "(c) 2023 Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/aeson-unqualified-ast";
      url = "";
      synopsis = "Aliases to \"aeson\" AST making it importable unqualified";
      description = "Reasonable type aliases and patterns for the AST definitions of \\\"aeson\\\",\nwhich are unlikely to cause any conflicts when imported unqualified.\nAs such the definitions from this package are safe to reexport from custom preludes.\nThe package provides the \\\"Json\\\" type alias and pattern synonyms,\nwhich are both descriptive and unambiguous, unlike the ones in the \\\"aeson\\\" package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }