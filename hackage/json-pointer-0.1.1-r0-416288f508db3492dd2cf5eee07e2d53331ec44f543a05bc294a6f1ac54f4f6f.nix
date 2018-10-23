{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "json-pointer";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "(c) 2016, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/json-pointer";
      url = "";
      synopsis = "JSON Pointer parsing and interpretation utilities";
      description = "This library provides a parser and a model,\nwhich is supposed to be later interpreted by the client libraries.";
      buildType = "Simple";
    };
    components = {
      "json-pointer" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.base-prelude)
        ];
      };
    };
  }