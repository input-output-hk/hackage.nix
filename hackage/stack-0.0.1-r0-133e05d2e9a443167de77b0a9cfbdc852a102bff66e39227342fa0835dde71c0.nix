{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stack"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chrisdone@fpcomplete.com";
      author = "Chris Done";
      homepage = "https://github.com/commercialhaskell/stack\ntest/package-dump/ghc-7.8.txt\ntest/package-dump/ghc-7.10.txt";
      url = "";
      synopsis = "The Haskell Tool Stack";
      description = "Please see the README.md for usage information, and\nthe wiki on Github for more details.  Also, note that\nthe API for the library is not currently stable, and may\nchange significantly, even between minor releases. It is\ncurrently only intended for use by the executable.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."cryptohash-conduit" or (errorHandler.buildDepError "cryptohash-conduit"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."enclosed-exceptions" or (errorHandler.buildDepError "enclosed-exceptions"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
          (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-binary-instances" or (errorHandler.buildDepError "vector-binary-instances"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.cpphs.components.exes.cpphs or (pkgs.pkgsBuildBuild.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
        ];
        buildable = true;
      };
      exes = {
        "stack" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."optparse-simple" or (errorHandler.buildDepError "optparse-simple"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."stack" or (errorHandler.buildDepError "stack"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          ];
          buildable = true;
        };
      };
      tests = {
        "stack-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."stack" or (errorHandler.buildDepError "stack"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ];
          buildable = true;
        };
      };
    };
  }