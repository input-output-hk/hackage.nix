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
          version = "0.9.2";
        };
        license = "BSD-3-Clause";
        copyright = "2010-2013 Galois, Inc.";
        maintainer = "joshhoyt@gmail.com, jtd@galois.com, creswick@galois.com";
        author = "Josh Hoyt, Jonathan Daugherty, Rogan Creswick";
        homepage = "http://github.com/creswick/cabal-dev";
        url = "";
        synopsis = "Manage sandboxed Haskell build environments";
        description = "cabal-dev is a tool for managing development builds of\nHaskell projects. It supports maintaining sandboxed\ncabal-install repositories, and sandboxed ghc package\ndatabases.\n\nBy default, it uses a cabal-dev directory under\nthe current working directory as the sandbox.\n\nFor most packages, just use @cabal-dev@ instead of\n@cabal@, and you will get a sandboxed build that\nwill not install anything (even automatically installed\ndependencies) into the user or global ghc package\ndatabases.\n\nIf your build depends on patched or unreleased libraries,\nyou can add them to your sandboxed build environment by\ninstalling them to the sandbox directly:so\n\n> cd /path/to/dependency\n> cabal-dev install --sandbox=/path/to/sandbox\n\nThen build your library/application with the specified\nsandbox.\n\n\nAdditional documentation can be found in the README.md on\ngithub:\n\n<http://github.com/creswick/cabal-dev/blob/master/README.md>";
        buildType = "Custom";
      };
      components = {
        exes = {
          cabal-dev = {
            depends  = optionals (!_flags.no-cabal-dev) (((([
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
              hsPkgs.transformers
              hsPkgs.setenv
              hsPkgs.template-haskell
            ] ++ [
              hsPkgs.base
            ]) ++ pkgs.lib.optional compiler.isGhc hsPkgs.containers) ++ pkgs.lib.optional compiler.isGhc hsPkgs.containers) ++ pkgs.lib.optional compiler.isGhc hsPkgs.containers) ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
          };
          ghc-pkg-6_8-compat = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.process
            ];
          };
          cabal-dev-test = {
            depends  = optionals (!(_flags.no-cabal-dev || !_flags.build-tests)) ([
              hsPkgs.MonadRandom
              hsPkgs.random
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ] ++ [
              hsPkgs.base
            ]) ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
          };
          fake-ghc-cabal-dev = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }