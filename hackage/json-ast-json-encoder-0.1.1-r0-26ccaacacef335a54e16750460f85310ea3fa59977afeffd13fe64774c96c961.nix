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
      identifier = { name = "json-ast-json-encoder"; version = "0.1.1"; };
      license = "MIT";
      copyright = "(c) 2016, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/json-ast-json-encoder ";
      url = "";
      synopsis = "Encoders of JSON AST";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."json-encoder" or (errorHandler.buildDepError "json-encoder"))
          (hsPkgs."json-ast" or (errorHandler.buildDepError "json-ast"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."contravariant-extras" or (errorHandler.buildDepError "contravariant-extras"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          ];
        buildable = true;
        };
      };
    }