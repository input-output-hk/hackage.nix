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
        name = "consumers";
        version = "2.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Andrzej Rybczak <andrzej@rybczak.net>,\nJonathan Jouty <jonathan@scrive.com>,\nMikhail Glushenkov <mikhail@scrive.com>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/consumers";
      url = "";
      synopsis = "Concurrent PostgreSQL data consumers";
      description = "Library for setting up concurrent consumers of data\nstored inside PostgreSQL database in a simple,\ndeclarative manner.";
      buildType = "Simple";
    };
    components = {
      "consumers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.hpqtypes)
          (hsPkgs.lifted-base)
          (hsPkgs.lifted-threads)
          (hsPkgs.log-base)
          (hsPkgs.monad-control)
          (hsPkgs.monad-time)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "consumers-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.consumers)
            (hsPkgs.hpqtypes)
            (hsPkgs.hpqtypes-extras)
            (hsPkgs.log-base)
            (hsPkgs.text)
            (hsPkgs.text-show)
            (hsPkgs.transformers)
          ];
        };
        "consumers-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.consumers)
            (hsPkgs.exceptions)
            (hsPkgs.HUnit)
            (hsPkgs.hpqtypes)
            (hsPkgs.hpqtypes-extras)
            (hsPkgs.log-base)
            (hsPkgs.monad-control)
            (hsPkgs.monad-loops)
            (hsPkgs.monad-time)
            (hsPkgs.mtl)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.text-show)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
          ];
        };
      };
    };
  }