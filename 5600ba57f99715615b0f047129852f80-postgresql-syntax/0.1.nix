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
        name = "postgresql-syntax";
        version = "0.1";
      };
      license = "MIT";
      copyright = "(c) 2017, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/postgresql-syntax";
      url = "";
      synopsis = "PostgreSQL SQL syntax utilities";
      description = "Currently this library only provides an SQL syntax validator.\n\nThis library wraps the \\\"libpq_query\\\" C library,\nwhich is an SQL parser based on the source code of the Postgres server.\nIOW, it uses the same parser as Postgres itself\nand hence supports all of its syntax.\n\nSo far this package has only been tested to work on the *nix systems (Mac OS including).";
      buildType = "Custom";
    };
    components = {
      "postgresql-syntax" = {
        depends  = [
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
        libs = [ (pkgs.pg_query) ];
      };
      tests = {
        "demo" = {
          depends  = [
            (hsPkgs.postgresql-syntax)
            (hsPkgs.rerebase)
          ];
        };
      };
    };
  }