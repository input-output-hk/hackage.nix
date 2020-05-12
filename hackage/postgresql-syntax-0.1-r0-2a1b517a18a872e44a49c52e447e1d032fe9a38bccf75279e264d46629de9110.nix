{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "postgresql-syntax"; version = "0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        libs = [ (pkgs."pg_query" or (errorHandler.sysDepError "pg_query")) ];
        buildable = true;
        };
      tests = {
        "demo" = {
          depends = [
            (hsPkgs."postgresql-syntax" or (errorHandler.buildDepError "postgresql-syntax"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            ];
          buildable = true;
          };
        };
      };
    }