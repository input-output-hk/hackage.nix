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
        name = "hasql-optparse-applicative";
        version = "0.3.0.2";
      };
      license = "MIT";
      copyright = "(c) 2016, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/hasql-optparse-applicative";
      url = "";
      synopsis = "\"optparse-applicative\" parsers for \"hasql\"";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hasql-optparse-applicative" = {
        depends  = [
          (hsPkgs.hasql)
          (hsPkgs.hasql-pool)
          (hsPkgs.optparse-applicative)
          (hsPkgs.base-prelude)
        ];
      };
    };
  }