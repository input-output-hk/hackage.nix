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
      identifier = { name = "compound-types"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/compound-types ";
      url = "";
      synopsis = "Sum and Product types and such";
      description = "This package provides scalable composite types with neat syntax.\nAdditionally it provides the strict data-structures.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      benchmarks = {
        "demo" = {
          depends = [
            (hsPkgs."compound-types" or (errorHandler.buildDepError "compound-types"))
            (hsPkgs."rebase" or (errorHandler.buildDepError "rebase"))
          ];
          buildable = true;
        };
      };
    };
  }