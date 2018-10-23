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
        name = "list-t-libcurl";
        version = "0.3.1";
      };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/list-t-libcurl";
      url = "";
      synopsis = "A \"libcurl\"-based streaming HTTP client";
      description = "";
      buildType = "Simple";
    };
    components = {
      "list-t-libcurl" = {
        depends  = [
          (hsPkgs.resource-pool)
          (hsPkgs.stm)
          (hsPkgs.curlhs)
          (hsPkgs.bytestring)
          (hsPkgs.list-t)
          (hsPkgs.either)
          (hsPkgs.mtl-prelude)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
    };
  }