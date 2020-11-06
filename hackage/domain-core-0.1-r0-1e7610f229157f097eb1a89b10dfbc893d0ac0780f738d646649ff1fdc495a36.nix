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
      identifier = { name = "domain-core"; version = "0.1"; };
      license = "MIT";
      copyright = "(c) 2020 Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/domain-core";
      url = "";
      synopsis = "Low-level API of \"domain\"";
      description = "Use this package for defining extensions to \\\"domain\\\".\nPrimarily derivers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."template-haskell-compat-v0208" or (errorHandler.buildDepError "template-haskell-compat-v0208"))
          (hsPkgs."th-lego" or (errorHandler.buildDepError "th-lego"))
          (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
          ];
        buildable = true;
        };
      };
    }