{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      portable = false;
      static = false;
      only-library = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haste-compiler";
          version = "0.5.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "anton@ekblad.cc";
        author = "Anton Ekblad <anton@ekblad.cc>";
        homepage = "http://haste-lang.org/";
        url = "";
        synopsis = "Haskell To ECMAScript compiler";
        description = "This package provides a featureful compiler from Haskell to\nJavaScript based on GHC. It generates small, fast code, makes\nuse of standard Haskell libraries, integrates with Cabal,\nsupports most GHC extensions and works on Windows, Linux and\nOSX.\nNon-Linux users are strongly recommended to download pre-built\nbinary packages from http://haste-lang.org/downloads instead\nof building from source.";
        buildType = "Custom";
      };
      components = {
        "haste-compiler" = {
          depends  = [
            hsPkgs.transformers
            hsPkgs.monads-tf
            hsPkgs.containers
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.random
            hsPkgs.binary
            hsPkgs.data-binary-ieee754
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.shellmate
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.ghc-paths
            hsPkgs.ghc
            hsPkgs.directory
            hsPkgs.websockets
            hsPkgs.network
            hsPkgs.network-uri
          ];
        };
        exes = {
          "haste-boot" = {
            depends  = [
              hsPkgs.ghc
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tar
              hsPkgs.bzlib
              hsPkgs.transformers
              hsPkgs.network
              hsPkgs.network-uri
              hsPkgs.HTTP
              hsPkgs.shellmate
              hsPkgs.ghc-paths
              hsPkgs.ghc
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
          "hastec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.ghc
              hsPkgs.mtl
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.array
              hsPkgs.ghc-paths
              hsPkgs.random
              hsPkgs.system-fileio
              hsPkgs.shellmate
              hsPkgs.either
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.ghc-simple
            ];
          };
          "haste-pkg" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.binary
              hsPkgs.bin-package-db
              hsPkgs.bytestring
              hsPkgs.shellmate
              hsPkgs.ghc
            ] ++ pkgs.lib.optionals (!system.isWindows) [
              hsPkgs.unix
              hsPkgs.terminfo
            ];
          };
          "haste-install-his" = {
            depends  = [
              hsPkgs.base
              hsPkgs.shellmate
              hsPkgs.ghc-paths
              hsPkgs.ghc
              hsPkgs.directory
            ];
          };
          "haste-copy-pkg" = {
            depends  = [
              hsPkgs.base
              hsPkgs.shellmate
              hsPkgs.ghc-paths
              hsPkgs.ghc
              hsPkgs.directory
            ];
          };
          "haste-cat" = {
            depends  = [
              hsPkgs.base
              hsPkgs.shellmate
              hsPkgs.ghc-paths
              hsPkgs.ghc
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.array
              hsPkgs.random
              hsPkgs.data-default
              hsPkgs.mtl
              hsPkgs.directory
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }