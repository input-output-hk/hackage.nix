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
        name = "consumers";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrzej Rybczak <andrzej@scrive.com>";
      author = "Scrive";
      homepage = "https://github.com/scrive/consumers";
      url = "";
      synopsis = "Concurrent PostgreSQL data consumers";
      description = "Library for setting up concurrent consumers of data stored inside PostgreSQL database in a simple, declarative manner.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.hpqtypes)
          (hsPkgs.lifted-base)
          (hsPkgs.lifted-threads)
          (hsPkgs.log)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }