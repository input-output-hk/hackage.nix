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
      identifier = { name = "domain-cereal"; version = "0.1"; };
      license = "MIT";
      copyright = "(c) 2021 Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/domain-cereal";
      url = "";
      synopsis = "Integration of domain with cereal";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."domain-core" or (errorHandler.buildDepError "domain-core"))
          (hsPkgs."leb128-cereal" or (errorHandler.buildDepError "leb128-cereal"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."template-haskell-compat-v0208" or (errorHandler.buildDepError "template-haskell-compat-v0208"))
          (hsPkgs."th-lego" or (errorHandler.buildDepError "th-lego"))
        ];
        buildable = true;
      };
      tests = {
        "demo" = {
          depends = [
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."cereal-text" or (errorHandler.buildDepError "cereal-text"))
            (hsPkgs."domain" or (errorHandler.buildDepError "domain"))
            (hsPkgs."domain-cereal" or (errorHandler.buildDepError "domain-cereal"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
          ];
          buildable = true;
        };
      };
    };
  }