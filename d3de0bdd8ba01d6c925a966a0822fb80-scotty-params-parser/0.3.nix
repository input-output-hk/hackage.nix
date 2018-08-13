{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "scotty-params-parser";
        version = "0.3";
      };
      license = "MIT";
      copyright = "(c) 2016, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/scotty-params-parser";
      url = "";
      synopsis = "HTTP-request's query parameters parser abstraction for \"scotty\"";
      description = "";
      buildType = "Simple";
    };
    components = {
      "scotty-params-parser" = {
        depends  = [
          (hsPkgs.scotty)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.success)
          (hsPkgs.base-prelude)
        ];
      };
    };
  }