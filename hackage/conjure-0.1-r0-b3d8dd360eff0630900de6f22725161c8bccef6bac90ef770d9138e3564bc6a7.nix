{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "conjure";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "See AUTHORS";
      homepage = "";
      url = "";
      synopsis = "A BitTorrent client";
      description = "Conjure is a Bittorrent client written in the functional, pure, lazy\nlanguage of Haskell. The primary point of Conjure is to show the\nfeasibility of Haskell with respect to heavy network applications. In\nparticular, we are using the STM (Software Transactional Memory)\nframework to provide us with concurrency.";
      buildType = "Simple";
    };
    components = {
      "conjure" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.stm)
          (hsPkgs.filepath)
          (hsPkgs.unix)
          (hsPkgs.html)
          (hsPkgs.HTTP)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.old-time)
          (hsPkgs.pretty)
        ];
      };
      exes = { "conjure" = {}; };
    };
  }