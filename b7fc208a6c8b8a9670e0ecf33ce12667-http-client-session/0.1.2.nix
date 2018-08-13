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
        name = "http-client-session";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "(c) 2016, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/http-client-session";
      url = "";
      synopsis = "A simple abstraction over the \"http-client\" connection manager";
      description = "";
      buildType = "Simple";
    };
    components = {
      "http-client-session" = {
        depends  = [
          (hsPkgs.http-client)
          (hsPkgs.bytestring)
          (hsPkgs.either)
          (hsPkgs.mtl-prelude)
          (hsPkgs.base-prelude)
        ];
      };
    };
  }