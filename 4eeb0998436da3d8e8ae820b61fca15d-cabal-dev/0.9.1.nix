{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      no-cabal-dev = false;
      build-tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cabal-dev";
          version = "0.9.1";
        };
        license = "BSD-3-Clause";
        copyright = "2010-2012 Galois, Inc.";
        maintainer = "j3h@galois.com, jtd@galois.com, creswick@galois.com";
        author = "Josh Hoyt, Jonathan Daugherty, Rogan Creswick";
        homepage = "http://github.com/creswick/cabal-dev";
        url = "";
        synopsis = "Manage sandboxed Haskell build environments";
        description = "cabal-dev is a tool for managing development builds of\nHaskell projects. It supports maintaining sandboxed\ncabal-install repositories, and sandboxed ghc package\ndatabases.\n\nBy default, it uses a cabal-dev directory under\nthe current working directory as the sandbox.\n\nFor most packages, just use @cabal-dev@ instead of\n@cabal@, and you will get a sandboxed build that\nwill not install anything (even automatically installed\ndependencies) into the user or global ghc package\ndatabases.\n\nIf your build depends on patched or unreleased libraries,\nyou can add them to your sandboxed build environment so\nthey can be installed by @cabal-dev@ or @cabal@. Just run:\n\n> cabal-dev add-source /path/to/source/code\n\n@cabal-dev add-source@ also supports importing tarballs\ninto a local cabal repository.\n\nAlternatively, install unreleased dependencies into the\ntarget cabal-dev sandbox instead of using @add-source@:\n\n> cd /path/to/dependency\n> cabal-dev install --sandobox=/path/to/sandbox\n\nThen build your library/application with the specified\nsandbox.\n\n\nAdditional documentation can be found in the README.md on\ngithub:\n\nhttp://github.com/creswick/cabal-dev/blob/master/README.md";
        buildType = "Custom";
      };
      components = {
        exes = {
          cabal-dev = {
            depends  = pkgs.lib.optionals (!_flags.no-cabal-dev) (((([
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
              hsPkgs.template-haskell
            ] ++ [
              hsPkgs.base
            ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.12") hsPkgs.containers) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.eq "6.10") hsPkgs.containers) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.eq "6.8") hsPkgs.containers) ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
            build-tools = [ hsPkgs.cabal ];
          };
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