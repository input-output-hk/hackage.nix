let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { pure-md5 = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "postgresql-pure"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 IIJ Innovation Institute Inc.";
      maintainer = "kazukiokamoto@iij.ad.jp";
      author = "Kazuki Okamoto";
      homepage = "https://github.com/iij-ii/postgresql-pure#readme";
      url = "";
      synopsis = "pure Haskell PostgreSQL driver";
      description = "pure Haskell PostgreSQL driver";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HDBC" or (buildDepError "HDBC"))
          (hsPkgs."Only" or (buildDepError "Only"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."double-conversion" or (buildDepError "double-conversion"))
          (hsPkgs."homotuple" or (buildDepError "homotuple"))
          (hsPkgs."list-tuple" or (buildDepError "list-tuple"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."postgresql-binary" or (buildDepError "postgresql-binary"))
          (hsPkgs."pretty-hex" or (buildDepError "pretty-hex"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."single-tuple" or (buildDepError "single-tuple"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          ] ++ (if flags.pure-md5
          then [ (hsPkgs."pureMD5" or (buildDepError "pureMD5")) ]
          else [
            (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
            ]);
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."Only" or (buildDepError "Only"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."double-conversion" or (buildDepError "double-conversion"))
            (hsPkgs."homotuple" or (buildDepError "homotuple"))
            (hsPkgs."list-tuple" or (buildDepError "list-tuple"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."postgresql-binary" or (buildDepError "postgresql-binary"))
            (hsPkgs."pretty-hex" or (buildDepError "pretty-hex"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."single-tuple" or (buildDepError "single-tuple"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ] ++ (if flags.pure-md5
            then [ (hsPkgs."pureMD5" or (buildDepError "pureMD5")) ]
            else [
              (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
              ]);
          buildable = true;
          };
        "hdbc-postgresql" = {
          depends = [
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."Only" or (buildDepError "Only"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."double-conversion" or (buildDepError "double-conversion"))
            (hsPkgs."homotuple" or (buildDepError "homotuple"))
            (hsPkgs."list-tuple" or (buildDepError "list-tuple"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."postgresql-binary" or (buildDepError "postgresql-binary"))
            (hsPkgs."pretty-hex" or (buildDepError "pretty-hex"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."single-tuple" or (buildDepError "single-tuple"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ] ++ (if flags.pure-md5
            then [ (hsPkgs."pureMD5" or (buildDepError "pureMD5")) ]
            else [
              (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
              ]);
          buildable = true;
          };
        "original" = {
          depends = [
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."Only" or (buildDepError "Only"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."double-conversion" or (buildDepError "double-conversion"))
            (hsPkgs."homotuple" or (buildDepError "homotuple"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."list-tuple" or (buildDepError "list-tuple"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."postgresql-binary" or (buildDepError "postgresql-binary"))
            (hsPkgs."postgresql-pure" or (buildDepError "postgresql-pure"))
            (hsPkgs."pretty-hex" or (buildDepError "pretty-hex"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."single-tuple" or (buildDepError "single-tuple"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ] ++ (if flags.pure-md5
            then [ (hsPkgs."pureMD5" or (buildDepError "pureMD5")) ]
            else [
              (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
              ]);
          buildable = true;
          };
        "relational-record" = {
          depends = [
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HDBC-postgresql" or (buildDepError "HDBC-postgresql"))
            (hsPkgs."HDBC-session" or (buildDepError "HDBC-session"))
            (hsPkgs."Only" or (buildDepError "Only"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."double-conversion" or (buildDepError "double-conversion"))
            (hsPkgs."homotuple" or (buildDepError "homotuple"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."list-tuple" or (buildDepError "list-tuple"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."persistable-record" or (buildDepError "persistable-record"))
            (hsPkgs."postgresql-binary" or (buildDepError "postgresql-binary"))
            (hsPkgs."postgresql-pure" or (buildDepError "postgresql-pure"))
            (hsPkgs."pretty-hex" or (buildDepError "pretty-hex"))
            (hsPkgs."relational-query" or (buildDepError "relational-query"))
            (hsPkgs."relational-query-HDBC" or (buildDepError "relational-query-HDBC"))
            (hsPkgs."relational-record" or (buildDepError "relational-record"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."single-tuple" or (buildDepError "single-tuple"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ] ++ (if flags.pure-md5
            then [ (hsPkgs."pureMD5" or (buildDepError "pureMD5")) ]
            else [
              (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
              ]);
          buildable = true;
          };
        };
      benchmarks = {
        "requests-per-second" = {
          depends = ([
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."Only" or (buildDepError "Only"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."double-conversion" or (buildDepError "double-conversion"))
            (hsPkgs."homotuple" or (buildDepError "homotuple"))
            (hsPkgs."list-tuple" or (buildDepError "list-tuple"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."postgresql-binary" or (buildDepError "postgresql-binary"))
            (hsPkgs."postgresql-libpq" or (buildDepError "postgresql-libpq"))
            (hsPkgs."postgresql-pure" or (buildDepError "postgresql-pure"))
            (hsPkgs."pretty-hex" or (buildDepError "pretty-hex"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."single-tuple" or (buildDepError "single-tuple"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ] ++ (if flags.pure-md5
            then [ (hsPkgs."pureMD5" or (buildDepError "pureMD5")) ]
            else [
              (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
              ])) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."postgres-wire" or (buildDepError "postgres-wire"));
          buildable = true;
          };
        "requests-per-second-constant" = {
          depends = ([
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."Only" or (buildDepError "Only"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."double-conversion" or (buildDepError "double-conversion"))
            (hsPkgs."homotuple" or (buildDepError "homotuple"))
            (hsPkgs."hourglass" or (buildDepError "hourglass"))
            (hsPkgs."list-tuple" or (buildDepError "list-tuple"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."postgresql-binary" or (buildDepError "postgresql-binary"))
            (hsPkgs."postgresql-libpq" or (buildDepError "postgresql-libpq"))
            (hsPkgs."postgresql-pure" or (buildDepError "postgresql-pure"))
            (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
            (hsPkgs."postgresql-typed" or (buildDepError "postgresql-typed"))
            (hsPkgs."pretty-hex" or (buildDepError "pretty-hex"))
            (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."single-tuple" or (buildDepError "single-tuple"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ] ++ (if flags.pure-md5
            then [ (hsPkgs."pureMD5" or (buildDepError "pureMD5")) ]
            else [
              (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
              ])) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."postgres-wire" or (buildDepError "postgres-wire"));
          buildable = true;
          };
        };
      };
    }