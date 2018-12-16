{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "json-ast-json-encoder";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "(c) 2016, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/json-ast-json-encoder";
      url = "";
      synopsis = "Encoders of JSON AST";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.json-encoder)
          (hsPkgs.json-ast)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.scientific)
          (hsPkgs.contravariant)
          (hsPkgs.contravariant-extras)
          (hsPkgs.base-prelude)
        ];
      };
    };
  }