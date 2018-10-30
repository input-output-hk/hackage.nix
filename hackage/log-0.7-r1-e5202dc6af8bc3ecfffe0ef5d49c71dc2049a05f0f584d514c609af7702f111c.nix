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
        name = "log";
        version = "0.7";
      };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Andrzej Rybczak <andrzej@rybczak.net>,\nJonathan Jouty <jonathan@scrive.com>,\nMikhail Glushenkov <mikhail@scrive.com>,\nOleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/log";
      url = "";
      synopsis = "Structured logging solution with multiple backends";
      description = "A library that provides a way to record structured\nlog messages with multiple backends.\n\nSupported backends:\n\n* standard output\n\n* Elasticsearch\n\n* PostgreSQL";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.log-base)
          (hsPkgs.log-elasticsearch)
          (hsPkgs.log-postgres)
        ];
      };
      tests = {
        "log-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bloodhound)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.log)
            (hsPkgs.random)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.time)
            (hsPkgs.text)
          ];
        };
        "log-test-integration" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bloodhound)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.log)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }