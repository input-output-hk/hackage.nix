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
    flags = {
      tui = true;
      internal-downloader = false;
      strict-metadata-parsing = false;
      no-exe = false;
      tar = false;
      yaml-streamly = false;
      dhall = true;
      dhall-tests = true;
    };
    package = {
      specVersion = "2.4";
      identifier = { name = "ghcup"; version = "0.2.3.0"; };
      license = "LGPL-3.0-only";
      copyright = "Julian Ospald 2024";
      maintainer = "hasufell@posteo.de";
      author = "Julian Ospald";
      homepage = "https://github.com/haskell/ghcup-hs";
      url = "";
      synopsis = "ghc toolchain installer";
      description = "A rewrite of the shell script ghcup, for providing\na more stable user experience and exposing an API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."variant" or (errorHandler.buildDepError "variant"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bz2" or (errorHandler.buildDepError "bz2"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
          (hsPkgs."disk-free-space" or (errorHandler.buildDepError "disk-free-space"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
          (hsPkgs."file-uri" or (errorHandler.buildDepError "file-uri"))
          (hsPkgs."xz" or (errorHandler.buildDepError "xz"))
          (hsPkgs."os-release" or (errorHandler.buildDepError "os-release"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."strict-base" or (errorHandler.buildDepError "strict-base"))
          (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ] ++ pkgs.lib.optionals (flags.dhall) [
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
        ]) ++ (if flags.yaml-streamly
          then [
            (hsPkgs."yaml-streamly" or (errorHandler.buildDepError "yaml-streamly"))
          ]
          else [
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ])) ++ (if system.isWindows
          then [
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
          ]
          else [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unix-bytestring" or (errorHandler.buildDepError "unix-bytestring"))
          ])) ++ (if flags.tar
          then [
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."zip" or (errorHandler.buildDepError "zip"))
          ]
          else [
            (hsPkgs."libarchive" or (errorHandler.buildDepError "libarchive"))
          ])) ++ (if flags.yaml-streamly
          then [
            (hsPkgs."yaml-streamly" or (errorHandler.buildDepError "yaml-streamly"))
          ]
          else [
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ])) ++ pkgs.lib.optionals (flags.internal-downloader && !system.isWindows) [
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."http-io-streams" or (errorHandler.buildDepError "http-io-streams"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."terminal-progress-bar" or (errorHandler.buildDepError "terminal-progress-bar"))
        ]) ++ pkgs.lib.optional (flags.tui) (hsPkgs."vty" or (errorHandler.buildDepError "vty"));
        buildable = true;
      };
      sublibs = {
        "ghcup-optparse" = {
          depends = ((([
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
            (hsPkgs."variant" or (errorHandler.buildDepError "variant"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
            (hsPkgs."ghcup" or (errorHandler.buildDepError "ghcup"))
          ] ++ pkgs.lib.optionals (flags.dhall) [
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
          ]) ++ (if flags.yaml-streamly
            then [
              (hsPkgs."yaml-streamly" or (errorHandler.buildDepError "yaml-streamly"))
            ]
            else [
              (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ])) ++ (if system.isWindows
            then [
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
            ]
            else [
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              (hsPkgs."unix-bytestring" or (errorHandler.buildDepError "unix-bytestring"))
            ])) ++ (if flags.tar
            then [
              (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
              (hsPkgs."zip" or (errorHandler.buildDepError "zip"))
            ]
            else [
              (hsPkgs."libarchive" or (errorHandler.buildDepError "libarchive"))
            ]);
          buildable = true;
        };
        "ghcup-tui" = {
          depends = ((([
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
            (hsPkgs."variant" or (errorHandler.buildDepError "variant"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
            (hsPkgs."ghcup" or (errorHandler.buildDepError "ghcup"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ] ++ pkgs.lib.optionals (flags.dhall) [
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
          ]) ++ (if flags.yaml-streamly
            then [
              (hsPkgs."yaml-streamly" or (errorHandler.buildDepError "yaml-streamly"))
            ]
            else [
              (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ])) ++ (if system.isWindows
            then [
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
            ]
            else [
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              (hsPkgs."unix-bytestring" or (errorHandler.buildDepError "unix-bytestring"))
            ])) ++ (if flags.tar
            then [
              (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
              (hsPkgs."zip" or (errorHandler.buildDepError "zip"))
            ]
            else [
              (hsPkgs."libarchive" or (errorHandler.buildDepError "libarchive"))
            ]);
          buildable = if !flags.tui then false else true;
        };
      };
      exes = {
        "ghcup" = {
          depends = (((([
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
            (hsPkgs."variant" or (errorHandler.buildDepError "variant"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
            (hsPkgs."ghcup" or (errorHandler.buildDepError "ghcup"))
            (hsPkgs."ghcup".components.sublibs.ghcup-optparse or (errorHandler.buildDepError "ghcup:ghcup-optparse"))
          ] ++ pkgs.lib.optionals (flags.dhall) [
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
          ]) ++ (if flags.yaml-streamly
            then [
              (hsPkgs."yaml-streamly" or (errorHandler.buildDepError "yaml-streamly"))
            ]
            else [
              (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ])) ++ (if system.isWindows
            then [
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
            ]
            else [
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              (hsPkgs."unix-bytestring" or (errorHandler.buildDepError "unix-bytestring"))
            ])) ++ (if flags.tar
            then [
              (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
              (hsPkgs."zip" or (errorHandler.buildDepError "zip"))
            ]
            else [
              (hsPkgs."libarchive" or (errorHandler.buildDepError "libarchive"))
            ])) ++ pkgs.lib.optional (flags.tui) (hsPkgs."ghcup".components.sublibs.ghcup-tui or (errorHandler.buildDepError "ghcup:ghcup-tui"));
          buildable = if flags.no-exe then false else true;
        };
      };
      tests = {
        "ghcup-test" = {
          depends = ([
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."generic-arbitrary" or (errorHandler.buildDepError "generic-arbitrary"))
            (hsPkgs."ghcup" or (errorHandler.buildDepError "ghcup"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-golden" or (errorHandler.buildDepError "hspec-golden"))
            (hsPkgs."hspec-golden-aeson" or (errorHandler.buildDepError "hspec-golden-aeson"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-arbitrary-adt" or (errorHandler.buildDepError "quickcheck-arbitrary-adt"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
          ] ++ pkgs.lib.optionals (flags.dhall && flags.dhall-tests) [
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."dhall-json" or (errorHandler.buildDepError "dhall-json"))
            (hsPkgs."dhall-yaml" or (errorHandler.buildDepError "dhall-yaml"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
          ]) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
        "ghcup-optparse-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghcup" or (errorHandler.buildDepError "ghcup"))
            (hsPkgs."ghcup".components.sublibs.ghcup-optparse or (errorHandler.buildDepError "ghcup:ghcup-optparse"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
            (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghcup" or (errorHandler.buildDepError "ghcup"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."variant" or (errorHandler.buildDepError "variant"))
            (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
        };
      };
    };
  }