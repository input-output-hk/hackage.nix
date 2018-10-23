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
        name = "pg-harness";
        version = "0.2.0";
      };
      license = "AGPL-3.0-only";
      copyright = "Copyright (c) 2014, 2015 Bardur Arantsson";
      maintainer = "bardur@scientician.net";
      author = "Bardur Arantsson";
      homepage = "https://github.com/BardurArantsson/pg-harness";
      url = "";
      synopsis = "REST service and library for creating/consuming temporary PostgreSQL databases";
      description = "REST service and client library for conveniently creating and consuming temporary\nPostgreSQL databases. This is intended for use from tests.\n\nSee <https://github.com/BardurArantsson/pg-harness/blob/master/README.md README.md> on\nGitHub for detailed usage and setup instructions for the REST service.";
      buildType = "Simple";
    };
    components = {
      "pg-harness" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.HTTP)
        ];
      };
      exes = {
        "pg-harness" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.ini)
            (hsPkgs.postgresql-simple)
            (hsPkgs.random)
            (hsPkgs.scotty)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }