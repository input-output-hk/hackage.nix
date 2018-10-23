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
        name = "hasql-postgres-options";
        version = "0.1.6";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql-postgres-options";
      url = "";
      synopsis = "An \"optparse-applicative\" parser for \"hasql-postgres\"";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hasql-postgres-options" = {
        depends  = [
          (hsPkgs.hasql-postgres)
          (hsPkgs.optparse-applicative)
          (hsPkgs.base-prelude)
        ];
      };
    };
  }