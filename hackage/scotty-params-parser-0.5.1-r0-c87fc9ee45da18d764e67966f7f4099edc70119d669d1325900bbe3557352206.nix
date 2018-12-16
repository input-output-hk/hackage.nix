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
        name = "scotty-params-parser";
        version = "0.5.1";
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
      "library" = {
        depends = [
          (hsPkgs.scotty)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.matcher)
          (hsPkgs.transformers)
          (hsPkgs.success)
          (hsPkgs.base-prelude)
        ];
      };
    };
  }