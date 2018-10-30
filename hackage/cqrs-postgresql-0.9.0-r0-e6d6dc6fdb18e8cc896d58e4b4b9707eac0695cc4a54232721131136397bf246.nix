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
        name = "cqrs-postgresql";
        version = "0.9.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.conduit)
          (hsPkgs.cqrs-types)
          (hsPkgs.old-locale)
          (hsPkgs.pool-conduit)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "cqrs-postgresql-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.cqrs-types)
            (hsPkgs.cqrs-test)
            (hsPkgs.pool-conduit)
            (hsPkgs.postgresql-libpq)
            (hsPkgs.cqrs-postgresql)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }