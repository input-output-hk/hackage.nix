{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "purescript";
          version = "0.9.1";
        };
        license = "MIT";
        copyright = "(c) 2013-15 Phil Freeman, (c) 2014-15 Gary Burgess";
        maintainer = "Phil Freeman <paf31@cantab.net>";
        author = "Phil Freeman <paf31@cantab.net>,\nGary Burgess <gary.burgess@gmail.com>,\nHardy Jones <jones3.hardy@gmail.com>,\nHarry Garrood <harry@garrood.me>,\nChristoph Hegemann <christoph.hegemann1337@gmail.com>";
        homepage = "http://www.purescript.org/";
        url = "";
        synopsis = "PureScript Programming Language Compiler";
        description = "A small strongly, statically typed programming language with expressive types, inspired by Haskell and compiling to Javascript.";
        buildType = "Simple";
      };
      components = {
        purescript = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-better-errors
            hsPkgs.ansi-terminal
            hsPkgs.base-compat
            hsPkgs.bower-json
            hsPkgs.boxes
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.dlist
            hsPkgs.edit-distance
            hsPkgs.filepath
            hsPkgs.fsnotify
            hsPkgs.Glob
            hsPkgs.haskeline
            hsPkgs.http-types
            hsPkgs.language-javascript
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.parallel
            hsPkgs.parsec
            hsPkgs.pattern-arrows
            hsPkgs.pipes
            hsPkgs.pipes-http
            hsPkgs.process
            hsPkgs.regex-tdfa
            hsPkgs.safe
            hsPkgs.semigroups
            hsPkgs.sourcemap
            hsPkgs.spdx
            hsPkgs.split
            hsPkgs.stm
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.transformers-compat
            hsPkgs.unordered-containers
            hsPkgs.utf8-string
            hsPkgs.vector
          ];
        };
        exes = {
          psc = {
            depends  = [
              hsPkgs.base
              hsPkgs.purescript
              hsPkgs.aeson
              hsPkgs.ansi-terminal
              hsPkgs.base-compat
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.Glob
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.parsec
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.utf8-string
            ];
          };
          psci = {
            depends  = [
              hsPkgs.base
              hsPkgs.purescript
              hsPkgs.base-compat
              hsPkgs.boxes
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.Glob
              hsPkgs.haskeline
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ];
          };
          psc-docs = {
            depends  = [
              hsPkgs.base
              hsPkgs.purescript
              hsPkgs.ansi-wl-pprint
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.Glob
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.process
              hsPkgs.split
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ];
          };
          psc-publish = {
            depends  = [
              hsPkgs.base
              hsPkgs.purescript
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.optparse-applicative
            ];
          };
          psc-hierarchy = {
            depends  = [
              hsPkgs.base
              hsPkgs.purescript
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.Glob
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.parsec
              hsPkgs.process
            ];
          };
          psc-bundle = {
            depends  = [
              hsPkgs.base
              hsPkgs.purescript
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.Glob
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ];
          };
          psc-ide-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.purescript
              hsPkgs.base-compat
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.monad-logger
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ];
          };
          psc-ide-client = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.text
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.purescript
              hsPkgs.aeson
              hsPkgs.aeson-better-errors
              hsPkgs.base-compat
              hsPkgs.boxes
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.Glob
              hsPkgs.haskeline
              hsPkgs.hspec
              hsPkgs.hspec-discover
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.silently
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.utf8-string
              hsPkgs.vector
            ];
          };
        };
      };
    }