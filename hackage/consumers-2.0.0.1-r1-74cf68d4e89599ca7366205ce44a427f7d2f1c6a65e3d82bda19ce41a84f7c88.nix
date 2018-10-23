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
        version = "2.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Andrzej Rybczak <andrzej@rybczak.net>,\nJonathan Jouty <jonathan@scrive.com>";
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
          (hsPkgs.hpqtypes)
          (hsPkgs.lifted-base)
          (hsPkgs.lifted-threads)
          (hsPkgs.log-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }