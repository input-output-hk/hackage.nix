{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      integration-tests = false;
      disable-git-info = false;
      static = false;
      hide-dependency-versions = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stack";
          version = "1.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "manny@fpcomplete.com";
        author = "Commercial Haskell SIG";
        homepage = "http://haskellstack.org";
        url = "";
        synopsis = "The Haskell Tool Stack";
        description = "Please see the README.md for usage information, and\nthe wiki on Github for more details.  Also, note that\nthe API for the library is not currently stable, and may\nchange significantly, even between minor releases. It is\ncurrently only intended for use by the executable.";
        buildType = "Custom";
      };
      components = {
        stack = {
          depends  = [
            hsPkgs.Cabal
            hsPkgs.aeson
            hsPkgs.ansi-terminal
            hsPkgs.async
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.base64-bytestring
            hsPkgs.binary
            hsPkgs.binary-tagged
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.clock
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.containers
            hsPkgs.cryptonite
            hsPkgs.cryptonite-conduit
            hsPkgs.directory
            hsPkgs.echo
            hsPkgs.either
            hsPkgs.errors
            hsPkgs.exceptions
            hsPkgs.extra
            hsPkgs.fast-logger
            hsPkgs.filelock
            hsPkgs.filepath
            hsPkgs.fsnotify
            hsPkgs.generic-deriving
            hsPkgs.ghc-prim
            hsPkgs.hackage-security
            hsPkgs.hashable
            hsPkgs.hpc
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.memory
            hsPkgs.microlens
            hsPkgs.microlens-mtl
            hsPkgs.mintty
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.monad-unlift
            hsPkgs.mtl
            hsPkgs.network-uri
            hsPkgs.open-browser
            hsPkgs.optparse-applicative
            hsPkgs.path
            hsPkgs.path-io
            hsPkgs.persistent
            hsPkgs.persistent-sqlite
            hsPkgs.persistent-template
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.regex-applicative-text
            hsPkgs.resourcet
            hsPkgs.retry
            hsPkgs.safe
            hsPkgs.safe-exceptions
            hsPkgs.semigroups
            hsPkgs.split
            hsPkgs.stm
            hsPkgs.streaming-commons
            hsPkgs.tar
            hsPkgs.template-haskell
            hsPkgs.temporary
            hsPkgs.text
            hsPkgs.text-binary
            hsPkgs.text-metrics
            hsPkgs.time
            hsPkgs.tls
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unicode-transforms
            hsPkgs.unix-compat
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-binary-instances
            hsPkgs.yaml
            hsPkgs.zlib
            hsPkgs.deepseq
            hsPkgs.hastache
            hsPkgs.project-template
            hsPkgs.zip-archive
            hsPkgs.hpack
            hsPkgs.store
            hsPkgs.store-core
            hsPkgs.annotated-wl-pprint
            hsPkgs.file-embed
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [
              hsPkgs.unix
              hsPkgs.pid1
            ]);
        };
        exes = {
          stack = {
            depends  = ([
              hsPkgs.Cabal
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.either
              hsPkgs.filelock
              hsPkgs.filepath
              hsPkgs.hpack
              hsPkgs.http-client
              hsPkgs.lifted-base
              hsPkgs.microlens
              hsPkgs.monad-control
              hsPkgs.monad-logger
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.path
              hsPkgs.path-io
              hsPkgs.split
              hsPkgs.stack
              hsPkgs.text
              hsPkgs.transformers
            ] ++ pkgs.lib.optional system.isWindows hsPkgs.Win32) ++ optionals (!_flags.disable-git-info) [
              hsPkgs.gitrev
              hsPkgs.optparse-simple
            ];
          };
        };
        tests = {
          stack-test = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.QuickCheck
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.cryptonite
              hsPkgs.directory
              hsPkgs.exceptions
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.hashable
              hsPkgs.http-client-tls
              hsPkgs.http-conduit
              hsPkgs.monad-logger
              hsPkgs.neat-interpolation
              hsPkgs.optparse-applicative
              hsPkgs.path
              hsPkgs.path-io
              hsPkgs.resourcet
              hsPkgs.retry
              hsPkgs.stack
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.mono-traversable
              hsPkgs.th-reify-many
              hsPkgs.smallcheck
              hsPkgs.bytestring
              hsPkgs.store
              hsPkgs.vector
              hsPkgs.unordered-containers
              hsPkgs.template-haskell
              hsPkgs.yaml
            ];
          };
          stack-integration-test = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.process
              hsPkgs.resourcet
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unix-compat
            ];
          };
        };
      };
    }