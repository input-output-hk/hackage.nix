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
        name = "hasql-backend";
        version = "0.4.2";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql-backend";
      url = "";
      synopsis = "API for backends of \"hasql\"";
      description = "An API for implementation of backends for the\n<http://hackage.haskell.org/package/hasql \"hasql\">\nlibrary.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.either)
          (hsPkgs.free)
          (hsPkgs.list-t)
          (hsPkgs.transformers)
          (hsPkgs.base-prelude)
        ];
      };
    };
  }