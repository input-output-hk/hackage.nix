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
        name = "broadcast-chan-tests";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2018 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://github.com/merijn/broadcast-chan";
      url = "";
      synopsis = "Helpers for generating tests for broadcast-chan";
      description = "Provides helpers for implementing the streaming/concurrency tests used by\nbroadcast-chan, broadcast-chan-conduit, and broadcast-chan-pipes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.broadcast-chan)
          (hsPkgs.clock)
          (hsPkgs.containers)
          (hsPkgs.optparse-applicative)
          (hsPkgs.paramtree)
          (hsPkgs.stm)
          (hsPkgs.tagged)
          (hsPkgs.tasty)
          (hsPkgs.tasty-golden)
          (hsPkgs.tasty-hunit)
          (hsPkgs.tasty-travis)
          (hsPkgs.temporary)
          (hsPkgs.text)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs.bifunctors)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.transformers);
      };
      tests = {
        "basic" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.broadcast-chan)
            (hsPkgs.broadcast-chan-tests)
            (hsPkgs.foldl)
            (hsPkgs.monad-loops)
            (hsPkgs.random)
          ];
        };
        "basic-unthreaded" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.broadcast-chan)
            (hsPkgs.broadcast-chan-tests)
            (hsPkgs.foldl)
            (hsPkgs.monad-loops)
            (hsPkgs.random)
          ];
        };
        "parallel-io" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.broadcast-chan)
            (hsPkgs.broadcast-chan-tests)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }