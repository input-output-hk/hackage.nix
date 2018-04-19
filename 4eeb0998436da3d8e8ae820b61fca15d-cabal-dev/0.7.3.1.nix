{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      no-cabal-dev = false;
      build-tests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cabal-dev";
          version = "0.7.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Galois, Inc.";
        maintainer = "j3h@galois.com, jtd@galois.com, creswick@galois.com";
        author = "Josh Hoyt, Jonathan Daughtery, Rogan Creswick";
        homepage = "https://github.com/creswick/cabal-dev";
        url = "";
        synopsis = "Manage sandboxed Haskell build environments";
        description = "cabal-dev is a tool for managing development builds of\nHaskell projects. It supports maintaining sandboxed\ncabal-install repositories, and sandboxed ghc package\ndatabases.\n\nBy default, it uses a cabal-dev directory under\nthe current working directory as the sandbox.\n\nFor most packages, just use @cabal-dev@ instead of\n@cabal@, and you will get a sandboxed build that\nwill not install anything (even automatically installed\ndependencies) into the user or global ghc package\ndatabases.\n\nIf your build depends on patched or unreleased libraries,\nyou can add them to your sandboxed build environment so\nthey can be installed by @cabal-dev@ or @cabal@. Just run:\n\n> cabal-dev add-source /path/to/source/code\n\n@cabal-dev add-source@ also supports importing tarballs\ninto a local cabal repository.\n\nThis tool has been tested with GHC 6.8-7.0.1.";
        buildType = "Custom";
      };
      components = {
        exes = {
          ghc-pkg-6_8-compat = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
            ];
          };
          cabal-dev-test = {
            depends  = pkgs.lib.optionals (!(_flags.no-cabal-dev || !_flags.build-tests)) ([
              hsPkgs.MonadRandom
              hsPkgs.random
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.containers
              hsPkgs.network
              hsPkgs.array
              hsPkgs.pretty
            ] ++ [
              hsPkgs.base
            ]) ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
          };
          cabal-dev = {
            depends  = pkgs.lib.optionals (!_flags.no-cabal-dev) ([
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.Cabal
              hsPkgs.HTTP
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.tar
              hsPkgs.zlib
            ] ++ [
              hsPkgs.base
            ]) ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
          };
        };
      };
    }