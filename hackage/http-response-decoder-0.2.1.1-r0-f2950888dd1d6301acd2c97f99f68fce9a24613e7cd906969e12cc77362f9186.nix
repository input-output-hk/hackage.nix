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
        name = "http-response-decoder";
        version = "0.2.1.1";
      };
      license = "MIT";
      copyright = "(c) 2016, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/http-response-decoder";
      url = "";
      synopsis = "Declarative DSL for parsing an HTTP response";
      description = "";
      buildType = "Simple";
    };
    components = {
      "http-response-decoder" = {
        depends  = [
          (hsPkgs.http-types)
          (hsPkgs.http-client)
          (hsPkgs.bytestring-tree-builder)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.case-insensitive)
          (hsPkgs.matcher)
          (hsPkgs.profunctors)
          (hsPkgs.transformers)
          (hsPkgs.base-prelude)
        ];
      };
    };
  }