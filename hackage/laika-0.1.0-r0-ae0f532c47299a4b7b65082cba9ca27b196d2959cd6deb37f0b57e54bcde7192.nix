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
      identifier = { name = "laika"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/laika ";
      url = "";
      synopsis = "Minimalistic type-checked compile-time template engine";
      description = "The library integrates flawlessly with Haskell's new\n<https://github.com/nikita-volkov/record first-class records>.\n\nIt inherits a remarkable quality from the dogs however:\nunlike most other template engines\nat compile time it barks at you whenever you do anything wrong in your templates.\nHence the title (from Russian \"lai\" means \"bark\").\nAlso it commemorates Laika, the hero dog,\nwhich became the first animal to orbit Earth and died in space.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."record" or (errorHandler.buildDepError "record"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
        ];
        buildable = true;
      };
      benchmarks = {
        "demo" = {
          depends = [
            (hsPkgs."laika" or (errorHandler.buildDepError "laika"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."record" or (errorHandler.buildDepError "record"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          ];
          buildable = true;
        };
      };
    };
  }