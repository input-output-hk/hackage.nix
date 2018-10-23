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
        name = "cqrs-postgresql";
        version = "0.10.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "PostgreSQL backend for the cqrs package.";
      description = "PostgreSQL backend for the cqrs package.";
      buildType = "Simple";
    };
    components = {
      "cqrs-postgresql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.cqrs-core)
          (hsPkgs.deepseq)
          (hsPkgs.enclosed-exceptions)
          (hsPkgs.io-streams)
          (hsPkgs.resource-pool)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.uuid-types)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cqrs-core)
            (hsPkgs.cqrs-testkit)
            (hsPkgs.io-streams)
            (hsPkgs.pg-harness-client)
            (hsPkgs.postgresql-libpq)
            (hsPkgs.random)
            (hsPkgs.resource-pool)
            (hsPkgs.uuid-types)
            (hsPkgs.cqrs-postgresql)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }