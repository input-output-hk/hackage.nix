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
      identifier = { name = "quickcheck-transformer"; version = "0.3.1"; };
      license = "MIT";
      copyright = "(c) 2019, Henning Thielemann\n(c) 2013, Nikita Volkov";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "http://hub.darcs.net/thielema/quickcheck-transformer/";
      url = "";
      synopsis = "A GenT monad transformer for QuickCheck library.";
      description = "A fork of QuickCheck-GenT that works for older GHC versions\nand uses the Test module folder like QuickCheck.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }