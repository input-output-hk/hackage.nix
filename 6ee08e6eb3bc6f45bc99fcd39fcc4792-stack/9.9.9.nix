{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      integration-tests = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "stack";
        version = "9.9.9";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chrisdone@fpcomplete.com";
      author = "Chris Done";
      homepage = "https://github.com/commercialhaskell/stack";
      url = "";
      synopsis = "The Haskell Tool Stack";
      description = "Please see the README.md for usage information, and\nthe wiki on Github for more details.  Also, note that\nthe API for the library is not currently stable, and may\nchange significantly, even between minor releases. It is\ncurrently only intended for use by the executable.";
      buildType = "Simple";
    };
    components = {
      "stack" = {
        depends  = [
          (hsPkgs.Cabal)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bifunctors)
          (hsPkgs.binary)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.conduit-combinators)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.cryptohash-conduit)
          (hsPkgs.directory)
          (hsPkgs.enclosed-exceptions)
          (hsPkgs.exceptions)
          (hsPkgs.fast-logger)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.optparse-applicative)
          (hsPkgs.path)
          (hsPkgs.persistent)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.persistent-template)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.safe)
          (hsPkgs.stm)
          (hsPkgs.streaming-commons)
          (hsPkgs.tar)
          (hsPkgs.template-haskell)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-binary-instances)
          (hsPkgs.void)
          (hsPkgs.yaml)
          (hsPkgs.zlib)
          (hsPkgs.deepseq)
          (hsPkgs.file-embed)
          (hsPkgs.word8)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "stack" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.http-conduit)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.optparse-applicative)
            (hsPkgs.optparse-simple)
            (hsPkgs.path)
            (hsPkgs.process)
            (hsPkgs.resourcet)
            (hsPkgs.stack)
            (hsPkgs.text)
            (hsPkgs.either)
            (hsPkgs.directory)
            (hsPkgs.split)
            (hsPkgs.unordered-containers)
            (hsPkgs.hashable)
            (hsPkgs.conduit)
            (hsPkgs.transformers)
            (hsPkgs.http-client)
          ];
        };
      };
      tests = {
        "stack-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.path)
            (hsPkgs.temporary)
            (hsPkgs.stack)
            (hsPkgs.monad-logger)
            (hsPkgs.http-conduit)
            (hsPkgs.cryptohash)
            (hsPkgs.transformers)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
            (hsPkgs.Cabal)
            (hsPkgs.text)
          ];
        };
        "stack-integration-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.temporary)
            (hsPkgs.hspec)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.unix-compat)
            (hsPkgs.containers)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
            (hsPkgs.async)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }