{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      disable-git-info = false;
      hide-dependency-versions = false;
      integration-tests = false;
      static = false;
      supported-build = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "stack";
          version = "1.7.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "manny@fpcomplete.com";
        author = "Commercial Haskell SIG";
        homepage = "http://haskellstack.org";
        url = "";
        synopsis = "The Haskell Tool Stack";
        description = "Please see the README.md for usage information, and the wiki on Github for more details.  Also, note that the API for the library is not currently stable, and may change significantly, even between minor releases. It is currently only intended for use by the executable.";
        buildType = "Custom";
      };
      components = {
        stack = {
          depends  = [
            hsPkgs.Cabal
            hsPkgs.aeson
            hsPkgs.annotated-wl-pprint
            hsPkgs.ansi-terminal
            hsPkgs.async
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.containers
            hsPkgs.cryptonite
            hsPkgs.cryptonite-conduit
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.echo
            hsPkgs.exceptions
            hsPkgs.extra
            hsPkgs.file-embed
            hsPkgs.filelock
            hsPkgs.filepath
            hsPkgs.fsnotify
            hsPkgs.generic-deriving
            hsPkgs.hackage-security
            hsPkgs.hashable
            hsPkgs.hpack
            hsPkgs.hpc
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.memory
            hsPkgs.microlens
            hsPkgs.mintty
            hsPkgs.monad-logger
            hsPkgs.mono-traversable
            hsPkgs.mtl
            hsPkgs.mustache
            hsPkgs.neat-interpolation
            hsPkgs.network-uri
            hsPkgs.open-browser
            hsPkgs.optparse-applicative
            hsPkgs.path
            hsPkgs.path-io
            hsPkgs.persistent
            hsPkgs.persistent-sqlite
            hsPkgs.persistent-template
            hsPkgs.pretty
            hsPkgs.primitive
            hsPkgs.process
            hsPkgs.project-template
            hsPkgs.regex-applicative-text
            hsPkgs.resourcet
            hsPkgs.retry
            hsPkgs.rio
            hsPkgs.semigroups
            hsPkgs.split
            hsPkgs.stm
            hsPkgs.store
            hsPkgs.store-core
            hsPkgs.streaming-commons
            hsPkgs.tar
            hsPkgs.template-haskell
            hsPkgs.temporary
            hsPkgs.text
            hsPkgs.text-metrics
            hsPkgs.th-reify-many
            hsPkgs.time
            hsPkgs.tls
            hsPkgs.transformers
            hsPkgs.typed-process
            hsPkgs.unicode-transforms
            hsPkgs.unix-compat
            hsPkgs.unliftio
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.yaml
            hsPkgs.zip-archive
            hsPkgs.zlib
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [
              hsPkgs.bindings-uname
              hsPkgs.unix
            ]);
          build-tools = pkgs.lib.optional (!system.isWindows) hsPkgs.hsc2hs;
        };
        exes = {
          stack = {
            depends  = ([
              hsPkgs.Cabal
              hsPkgs.aeson
              hsPkgs.annotated-wl-pprint
              hsPkgs.ansi-terminal
              hsPkgs.async
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.cryptonite
              hsPkgs.cryptonite-conduit
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.echo
              hsPkgs.exceptions
              hsPkgs.extra
              hsPkgs.file-embed
              hsPkgs.filelock
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.generic-deriving
              hsPkgs.hackage-security
              hsPkgs.hashable
              hsPkgs.hpack
              hsPkgs.hpc
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.memory
              hsPkgs.microlens
              hsPkgs.mintty
              hsPkgs.monad-logger
              hsPkgs.mono-traversable
              hsPkgs.mtl
              hsPkgs.mustache
              hsPkgs.neat-interpolation
              hsPkgs.network-uri
              hsPkgs.open-browser
              hsPkgs.optparse-applicative
              hsPkgs.path
              hsPkgs.path-io
              hsPkgs.persistent
              hsPkgs.persistent-sqlite
              hsPkgs.persistent-template
              hsPkgs.pretty
              hsPkgs.primitive
              hsPkgs.process
              hsPkgs.project-template
              hsPkgs.regex-applicative-text
              hsPkgs.resourcet
              hsPkgs.retry
              hsPkgs.rio
              hsPkgs.semigroups
              hsPkgs.split
              hsPkgs.stack
              hsPkgs.stm
              hsPkgs.store
              hsPkgs.store-core
              hsPkgs.streaming-commons
              hsPkgs.tar
              hsPkgs.template-haskell
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.text-metrics
              hsPkgs.th-reify-many
              hsPkgs.time
              hsPkgs.tls
              hsPkgs.transformers
              hsPkgs.typed-process
              hsPkgs.unicode-transforms
              hsPkgs.unix-compat
              hsPkgs.unliftio
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.yaml
              hsPkgs.zip-archive
              hsPkgs.zlib
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [
                hsPkgs.bindings-uname
                hsPkgs.unix
              ])) ++ pkgs.lib.optionals (!_flags.disable-git-info) [
              hsPkgs.gitrev
              hsPkgs.optparse-simple
            ];
            build-tools = pkgs.lib.optional (!system.isWindows) hsPkgs.hsc2hs;
          };
        };
        tests = {
          stack-integration-test = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.aeson
              hsPkgs.annotated-wl-pprint
              hsPkgs.ansi-terminal
              hsPkgs.async
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.cryptonite
              hsPkgs.cryptonite-conduit
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.echo
              hsPkgs.exceptions
              hsPkgs.extra
              hsPkgs.file-embed
              hsPkgs.filelock
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.generic-deriving
              hsPkgs.hackage-security
              hsPkgs.hashable
              hsPkgs.hpack
              hsPkgs.hpc
              hsPkgs.hspec
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.memory
              hsPkgs.microlens
              hsPkgs.mintty
              hsPkgs.monad-logger
              hsPkgs.mono-traversable
              hsPkgs.mtl
              hsPkgs.mustache
              hsPkgs.neat-interpolation
              hsPkgs.network-uri
              hsPkgs.open-browser
              hsPkgs.optparse-applicative
              hsPkgs.path
              hsPkgs.path-io
              hsPkgs.persistent
              hsPkgs.persistent-sqlite
              hsPkgs.persistent-template
              hsPkgs.pretty
              hsPkgs.primitive
              hsPkgs.process
              hsPkgs.project-template
              hsPkgs.regex-applicative-text
              hsPkgs.resourcet
              hsPkgs.retry
              hsPkgs.rio
              hsPkgs.semigroups
              hsPkgs.split
              hsPkgs.stm
              hsPkgs.store
              hsPkgs.store-core
              hsPkgs.streaming-commons
              hsPkgs.tar
              hsPkgs.template-haskell
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.text-metrics
              hsPkgs.th-reify-many
              hsPkgs.time
              hsPkgs.tls
              hsPkgs.transformers
              hsPkgs.typed-process
              hsPkgs.unicode-transforms
              hsPkgs.unix-compat
              hsPkgs.unliftio
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.yaml
              hsPkgs.zip-archive
              hsPkgs.zlib
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [
                hsPkgs.bindings-uname
                hsPkgs.unix
              ]);
            build-tools = pkgs.lib.optional (!system.isWindows) hsPkgs.hsc2hs;
          };
          stack-test = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.annotated-wl-pprint
              hsPkgs.ansi-terminal
              hsPkgs.async
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.cryptonite
              hsPkgs.cryptonite-conduit
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.echo
              hsPkgs.exceptions
              hsPkgs.extra
              hsPkgs.file-embed
              hsPkgs.filelock
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.generic-deriving
              hsPkgs.hackage-security
              hsPkgs.hashable
              hsPkgs.hpack
              hsPkgs.hpc
              hsPkgs.hspec
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.memory
              hsPkgs.microlens
              hsPkgs.mintty
              hsPkgs.monad-logger
              hsPkgs.mono-traversable
              hsPkgs.mtl
              hsPkgs.mustache
              hsPkgs.neat-interpolation
              hsPkgs.network-uri
              hsPkgs.open-browser
              hsPkgs.optparse-applicative
              hsPkgs.path
              hsPkgs.path-io
              hsPkgs.persistent
              hsPkgs.persistent-sqlite
              hsPkgs.persistent-template
              hsPkgs.pretty
              hsPkgs.primitive
              hsPkgs.process
              hsPkgs.project-template
              hsPkgs.regex-applicative-text
              hsPkgs.resourcet
              hsPkgs.retry
              hsPkgs.rio
              hsPkgs.semigroups
              hsPkgs.smallcheck
              hsPkgs.split
              hsPkgs.stack
              hsPkgs.stm
              hsPkgs.store
              hsPkgs.store-core
              hsPkgs.streaming-commons
              hsPkgs.tar
              hsPkgs.template-haskell
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.text-metrics
              hsPkgs.th-reify-many
              hsPkgs.time
              hsPkgs.tls
              hsPkgs.transformers
              hsPkgs.typed-process
              hsPkgs.unicode-transforms
              hsPkgs.unix-compat
              hsPkgs.unliftio
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.yaml
              hsPkgs.zip-archive
              hsPkgs.zlib
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [
                hsPkgs.bindings-uname
                hsPkgs.unix
              ]);
            build-tools = pkgs.lib.optional (!system.isWindows) hsPkgs.hsc2hs;
          };
        };
      };
    }