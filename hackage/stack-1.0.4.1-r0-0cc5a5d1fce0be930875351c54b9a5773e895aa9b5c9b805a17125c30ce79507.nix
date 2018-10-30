{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      integration-tests = false;
      disable-git-info = false;
      static = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "stack";
        version = "1.0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "manny@fpcomplete.com";
      author = "Commercial Haskell SIG";
      homepage = "http://haskellstack.org";
      url = "";
      synopsis = "The Haskell Tool Stack";
      description = "Please see the README.md for usage information, and\nthe wiki on Github for more details.  Also, note that\nthe API for the library is not currently stable, and may\nchange significantly, even between minor releases. It is\ncurrently only intended for use by the executable.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.Cabal)
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.binary-tagged)
          (hsPkgs.blaze-builder)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.cryptohash-conduit)
          (hsPkgs.directory)
          (hsPkgs.edit-distance)
          (hsPkgs.either)
          (hsPkgs.enclosed-exceptions)
          (hsPkgs.errors)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.fast-logger)
          (hsPkgs.filelock)
          (hsPkgs.filepath)
          (hsPkgs.fsnotify)
          (hsPkgs.hashable)
          (hsPkgs.hpc)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.path)
          (hsPkgs.path-io)
          (hsPkgs.persistent)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.persistent-template)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.retry)
          (hsPkgs.safe)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.streaming-commons)
          (hsPkgs.tar)
          (hsPkgs.template-haskell)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.text-binary)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unix-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-binary-instances)
          (hsPkgs.yaml)
          (hsPkgs.zlib)
          (hsPkgs.deepseq)
          (hsPkgs.hastache)
          (hsPkgs.project-template)
          (hsPkgs.uuid)
          (hsPkgs.zip-archive)
          (hsPkgs.hpack)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
      };
      exes = {
        "stack" = {
          depends  = ([
            (hsPkgs.Cabal)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filelock)
            (hsPkgs.filepath)
            (hsPkgs.http-client)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.stack)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32)) ++ pkgs.lib.optionals (!flags.disable-git-info) [
            (hsPkgs.gitrev)
            (hsPkgs.optparse-simple)
          ];
        };
      };
      tests = {
        "stack-test" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.http-conduit)
            (hsPkgs.monad-logger)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.resourcet)
            (hsPkgs.retry)
            (hsPkgs.stack)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
        "stack-integration-test" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.process)
            (hsPkgs.resourcet)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix-compat)
          ];
        };
      };
    };
  }