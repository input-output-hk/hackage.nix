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
      specVersion = "1.24";
      identifier = { name = "lazy"; version = "0.1"; };
      license = "MIT";
      copyright = "(c) 2017, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/lazy";
      url = "";
      synopsis = "Explicit laziness for Haskell";
      description = "Now that we have the \\\"Strict\\\" pragma at hand we can finally work in Haskell as in a strict language.\nSometimes though laziness is useful,\nbut all Haskellers also know that types keep us safe.\nThis library provides laziness as an abstraction with an explicit type-signature,\nand it so happens that this abstraction forms a monad!\n\nThis library takes inspiration from the following blog post:\n<https://nikita-volkov.github.io/if-haskell-were-strict/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }