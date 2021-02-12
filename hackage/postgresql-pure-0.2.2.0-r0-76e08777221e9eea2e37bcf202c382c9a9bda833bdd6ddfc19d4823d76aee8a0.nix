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
    flags = { pure-md5 = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "postgresql-pure"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 IIJ Innovation Institute Inc.";
      maintainer = "kazukiokamoto@iij.ad.jp";
      author = "Kazuki Okamoto";
      homepage = "https://github.com/iij-ii/postgresql-pure#readme";
      url = "";
      synopsis = "pure Haskell PostgreSQL driver";
      description = "pure Haskell PostgreSQL driver";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))
          (hsPkgs."Only" or (errorHandler.buildDepError "Only"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
          (hsPkgs."homotuple" or (errorHandler.buildDepError "homotuple"))
          (hsPkgs."list-tuple" or (errorHandler.buildDepError "list-tuple"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."postgresql-binary" or (errorHandler.buildDepError "postgresql-binary"))
          (hsPkgs."postgresql-placeholder-converter" or (errorHandler.buildDepError "postgresql-placeholder-converter"))
          (hsPkgs."pretty-hex" or (errorHandler.buildDepError "pretty-hex"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."single-tuple" or (errorHandler.buildDepError "single-tuple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ (if flags.pure-md5
          then [ (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5")) ]
          else [
            (hsPkgs."cryptohash-md5" or (errorHandler.buildDepError "cryptohash-md5"))
            ]);
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))
            (hsPkgs."Only" or (errorHandler.buildDepError "Only"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
            (hsPkgs."homotuple" or (errorHandler.buildDepError "homotuple"))
            (hsPkgs."list-tuple" or (errorHandler.buildDepError "list-tuple"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."postgresql-binary" or (errorHandler.buildDepError "postgresql-binary"))
            (hsPkgs."postgresql-placeholder-converter" or (errorHandler.buildDepError "postgresql-placeholder-converter"))
            (hsPkgs."pretty-hex" or (errorHandler.buildDepError "pretty-hex"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."single-tuple" or (errorHandler.buildDepError "single-tuple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ] ++ (if flags.pure-md5
            then [
              (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
              ]
            else [
              (hsPkgs."cryptohash-md5" or (errorHandler.buildDepError "cryptohash-md5"))
              ]);
          buildable = true;
          };
        "hdbc-postgresql" = {
          depends = [
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))
            (hsPkgs."Only" or (errorHandler.buildDepError "Only"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
            (hsPkgs."homotuple" or (errorHandler.buildDepError "homotuple"))
            (hsPkgs."list-tuple" or (errorHandler.buildDepError "list-tuple"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."postgresql-binary" or (errorHandler.buildDepError "postgresql-binary"))
            (hsPkgs."postgresql-placeholder-converter" or (errorHandler.buildDepError "postgresql-placeholder-converter"))
            (hsPkgs."pretty-hex" or (errorHandler.buildDepError "pretty-hex"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."single-tuple" or (errorHandler.buildDepError "single-tuple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ] ++ (if flags.pure-md5
            then [
              (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
              ]
            else [
              (hsPkgs."cryptohash-md5" or (errorHandler.buildDepError "cryptohash-md5"))
              ]);
          buildable = true;
          };
        "original" = {
          depends = [
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))
            (hsPkgs."Only" or (errorHandler.buildDepError "Only"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
            (hsPkgs."homotuple" or (errorHandler.buildDepError "homotuple"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."list-tuple" or (errorHandler.buildDepError "list-tuple"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."postgresql-binary" or (errorHandler.buildDepError "postgresql-binary"))
            (hsPkgs."postgresql-placeholder-converter" or (errorHandler.buildDepError "postgresql-placeholder-converter"))
            (hsPkgs."postgresql-pure" or (errorHandler.buildDepError "postgresql-pure"))
            (hsPkgs."pretty-hex" or (errorHandler.buildDepError "pretty-hex"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."single-tuple" or (errorHandler.buildDepError "single-tuple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ] ++ (if flags.pure-md5
            then [
              (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
              ]
            else [
              (hsPkgs."cryptohash-md5" or (errorHandler.buildDepError "cryptohash-md5"))
              ]);
          buildable = true;
          };
        "relational-record" = {
          depends = [
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-postgresql" or (errorHandler.buildDepError "HDBC-postgresql"))
            (hsPkgs."HDBC-session" or (errorHandler.buildDepError "HDBC-session"))
            (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))
            (hsPkgs."Only" or (errorHandler.buildDepError "Only"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
            (hsPkgs."homotuple" or (errorHandler.buildDepError "homotuple"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."list-tuple" or (errorHandler.buildDepError "list-tuple"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."persistable-record" or (errorHandler.buildDepError "persistable-record"))
            (hsPkgs."postgresql-binary" or (errorHandler.buildDepError "postgresql-binary"))
            (hsPkgs."postgresql-placeholder-converter" or (errorHandler.buildDepError "postgresql-placeholder-converter"))
            (hsPkgs."postgresql-pure" or (errorHandler.buildDepError "postgresql-pure"))
            (hsPkgs."pretty-hex" or (errorHandler.buildDepError "pretty-hex"))
            (hsPkgs."relational-query" or (errorHandler.buildDepError "relational-query"))
            (hsPkgs."relational-query-HDBC" or (errorHandler.buildDepError "relational-query-HDBC"))
            (hsPkgs."relational-record" or (errorHandler.buildDepError "relational-record"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."single-tuple" or (errorHandler.buildDepError "single-tuple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ] ++ (if flags.pure-md5
            then [
              (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
              ]
            else [
              (hsPkgs."cryptohash-md5" or (errorHandler.buildDepError "cryptohash-md5"))
              ]);
          buildable = true;
          };
        };
      benchmarks = {
        "requests-per-second" = {
          depends = ([
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))
            (hsPkgs."Only" or (errorHandler.buildDepError "Only"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
            (hsPkgs."homotuple" or (errorHandler.buildDepError "homotuple"))
            (hsPkgs."list-tuple" or (errorHandler.buildDepError "list-tuple"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."postgresql-binary" or (errorHandler.buildDepError "postgresql-binary"))
            (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
            (hsPkgs."postgresql-placeholder-converter" or (errorHandler.buildDepError "postgresql-placeholder-converter"))
            (hsPkgs."postgresql-pure" or (errorHandler.buildDepError "postgresql-pure"))
            (hsPkgs."pretty-hex" or (errorHandler.buildDepError "pretty-hex"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."single-tuple" or (errorHandler.buildDepError "single-tuple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ] ++ (if flags.pure-md5
            then [
              (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
              ]
            else [
              (hsPkgs."cryptohash-md5" or (errorHandler.buildDepError "cryptohash-md5"))
              ])) ++ (pkgs.lib).optional (!system.isWindows && (compiler.isGhc && (compiler.version).lt "8.8.0")) (hsPkgs."postgres-wire" or (errorHandler.buildDepError "postgres-wire"));
          buildable = true;
          };
        "requests-per-second-constant" = {
          depends = (([
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))
            (hsPkgs."Only" or (errorHandler.buildDepError "Only"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
            (hsPkgs."homotuple" or (errorHandler.buildDepError "homotuple"))
            (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
            (hsPkgs."list-tuple" or (errorHandler.buildDepError "list-tuple"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."postgresql-binary" or (errorHandler.buildDepError "postgresql-binary"))
            (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
            (hsPkgs."postgresql-placeholder-converter" or (errorHandler.buildDepError "postgresql-placeholder-converter"))
            (hsPkgs."postgresql-pure" or (errorHandler.buildDepError "postgresql-pure"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."pretty-hex" or (errorHandler.buildDepError "pretty-hex"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."single-tuple" or (errorHandler.buildDepError "single-tuple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ] ++ (if flags.pure-md5
            then [
              (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
              ]
            else [
              (hsPkgs."cryptohash-md5" or (errorHandler.buildDepError "cryptohash-md5"))
              ])) ++ (pkgs.lib).optional (!system.isWindows && (compiler.isGhc && (compiler.version).lt "8.8.0")) (hsPkgs."postgres-wire" or (errorHandler.buildDepError "postgres-wire"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.8.0") (hsPkgs."postgresql-typed" or (errorHandler.buildDepError "postgresql-typed"));
          buildable = true;
          };
        };
      };
    }