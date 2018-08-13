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
        name = "log";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Andrzej Rybczak <andrzej@rybczak.net>,\nJonathan Jouty <jonathan@scrive.com>,\nMikhail Glushenkov <mikhail@scrive.com>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/log";
      url = "";
      synopsis = "Structured logging solution with multiple backends";
      description = "A library that provides a way to record structured\nlog messages with multiple backends.\n\nSupported backends:\n\n* standard output\n\n* Elasticsearch\n\n* PostgreSQL";
      buildType = "Simple";
    };
    components = {
      "log" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bloodhound)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.hpqtypes)
          (hsPkgs.http-client)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.monad-time)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
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