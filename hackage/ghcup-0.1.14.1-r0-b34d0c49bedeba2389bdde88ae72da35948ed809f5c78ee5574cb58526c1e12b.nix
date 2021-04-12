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
    flags = { tui = false; internal-downloader = false; tar = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "ghcup"; version = "0.1.14.1"; };
      license = "LGPL-3.0-only";
      copyright = "Julian Ospald 2020";
      maintainer = "hasufell@posteo.de";
      author = "Julian Ospald";
      homepage = "https://gitlab.haskell.org/haskell/ghcup-hs";
      url = "";
      synopsis = "ghc toolchain installer as an exe/library";
      description = "A rewrite of the shell script ghcup, for providing\na more stable user experience and exposing an API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."ascii-string" or (errorHandler.buildDepError "ascii-string"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bz2" or (errorHandler.buildDepError "bz2"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
          (hsPkgs."concurrent-output" or (errorHandler.buildDepError "concurrent-output"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."haskus-utils-types" or (errorHandler.buildDepError "haskus-utils-types"))
          (hsPkgs."haskus-utils-variant" or (errorHandler.buildDepError "haskus-utils-variant"))
          (hsPkgs."hpath" or (errorHandler.buildDepError "hpath"))
          (hsPkgs."hpath-directory" or (errorHandler.buildDepError "hpath-directory"))
          (hsPkgs."hpath-filepath" or (errorHandler.buildDepError "hpath-filepath"))
          (hsPkgs."hpath-io" or (errorHandler.buildDepError "hpath-io"))
          (hsPkgs."hpath-posix" or (errorHandler.buildDepError "hpath-posix"))
          (hsPkgs."lzma-static" or (errorHandler.buildDepError "lzma-static"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."optics-vl" or (errorHandler.buildDepError "optics-vl"))
          (hsPkgs."os-release" or (errorHandler.buildDepError "os-release"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
          (hsPkgs."streamly-bytestring" or (errorHandler.buildDepError "streamly-bytestring"))
          (hsPkgs."streamly-posix" or (errorHandler.buildDepError "streamly-posix"))
          (hsPkgs."strict-base" or (errorHandler.buildDepError "strict-base"))
          (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."unix-bytestring" or (errorHandler.buildDepError "unix-bytestring"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ] ++ (pkgs.lib).optionals (flags.internal-downloader) [
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."http-io-streams" or (errorHandler.buildDepError "http-io-streams"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."terminal-progress-bar" or (errorHandler.buildDepError "terminal-progress-bar"))
          ]) ++ (if flags.tar
          then [
            (hsPkgs."tar-bytestring" or (errorHandler.buildDepError "tar-bytestring"))
            ]
          else [
            (hsPkgs."libarchive" or (errorHandler.buildDepError "libarchive"))
            ]);
        buildable = true;
        };
      exes = {
        "ghcup" = {
          depends = ([
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghcup" or (errorHandler.buildDepError "ghcup"))
            (hsPkgs."haskus-utils-variant" or (errorHandler.buildDepError "haskus-utils-variant"))
            (hsPkgs."hpath" or (errorHandler.buildDepError "hpath"))
            (hsPkgs."hpath-io" or (errorHandler.buildDepError "hpath-io"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
            ] ++ (pkgs.lib).optionals (flags.tui) [
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ]) ++ (pkgs.lib).optional (!flags.tar) (hsPkgs."libarchive" or (errorHandler.buildDepError "libarchive"));
          buildable = true;
          };
        "ghcup-gen" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghcup" or (errorHandler.buildDepError "ghcup"))
            (hsPkgs."haskus-utils-variant" or (errorHandler.buildDepError "haskus-utils-variant"))
            (hsPkgs."hpath" or (errorHandler.buildDepError "hpath"))
            (hsPkgs."hpath-filepath" or (errorHandler.buildDepError "hpath-filepath"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ] ++ (if flags.tar
            then [
              (hsPkgs."tar-bytestring" or (errorHandler.buildDepError "tar-bytestring"))
              ]
            else [
              (hsPkgs."libarchive" or (errorHandler.buildDepError "libarchive"))
              ]);
          buildable = true;
          };
        };
      tests = {
        "ghcup-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."generic-arbitrary" or (errorHandler.buildDepError "generic-arbitrary"))
            (hsPkgs."ghcup" or (errorHandler.buildDepError "ghcup"))
            (hsPkgs."hpath" or (errorHandler.buildDepError "hpath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-golden-aeson" or (errorHandler.buildDepError "hspec-golden-aeson"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-arbitrary-adt" or (errorHandler.buildDepError "quickcheck-arbitrary-adt"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
            (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
            ];
          buildable = true;
          };
        };
      };
    }