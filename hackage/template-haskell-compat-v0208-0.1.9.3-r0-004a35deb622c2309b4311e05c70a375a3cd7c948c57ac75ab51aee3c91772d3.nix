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
        name = "template-haskell-compat-v0208";
        version = "0.1.9.3";
      };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/template-haskell-compat-v0208";
      url = "";
      synopsis = "Backward-compatibility layer for Template Haskell newer than 2.8";
      description = "Collection of functions that aims to help you to write\nTemplate Haskell that is compatible\nwith all versions of GHC starting from 7.6.\nThe oldest GHC serves as the common denominator here,\nso the newer functionality is avoided here.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }