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
    flags = {
      portable = false;
      openssl = false;
      build-pong = false;
      build-testserver = false;
      debug = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "snap-server"; version = "1.0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "snap@snapframework.com";
      author = "Snap Framework Authors  (see CONTRIBUTORS)";
      homepage = "http://snapframework.com/";
      url = "";
      synopsis = "A web server for the Snap Framework";
      description = "Snap is a simple and fast web development framework and server written in\nHaskell. For more information or to download the latest version, you can\nvisit the Snap project website at <http://snapframework.com/>.\n\nThe Snap HTTP server is a high performance web server library written in\nHaskell. Together with the @snap-core@ library upon which it depends, it\nprovides a clean and efficient Haskell programming interface to the HTTP\nprotocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."clock" or (buildDepError "clock"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."io-streams" or (buildDepError "io-streams"))
          (hsPkgs."io-streams-haproxy" or (buildDepError "io-streams-haproxy"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."snap-core" or (buildDepError "snap-core"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ (pkgs.lib).optional (!(flags.portable || system.isWindows)) (hsPkgs."unix" or (buildDepError "unix"))) ++ (pkgs.lib).optionals (flags.openssl) [
          (hsPkgs."HsOpenSSL" or (buildDepError "HsOpenSSL"))
          (hsPkgs."openssl-streams" or (buildDepError "openssl-streams"))
          ];
        };
      exes = {
        "snap-test-pong-server" = {
          depends = ([
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."io-streams-haproxy" or (buildDepError "io-streams-haproxy"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ] ++ (pkgs.lib).optional (!(flags.portable || system.isWindows)) (hsPkgs."unix" or (buildDepError "unix"))) ++ (pkgs.lib).optionals (flags.openssl) [
            (hsPkgs."HsOpenSSL" or (buildDepError "HsOpenSSL"))
            (hsPkgs."openssl-streams" or (buildDepError "openssl-streams"))
            ];
          };
        "snap-test-server" = {
          depends = ([
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."io-streams-haproxy" or (buildDepError "io-streams-haproxy"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ] ++ (pkgs.lib).optionals (flags.openssl) [
            (hsPkgs."HsOpenSSL" or (buildDepError "HsOpenSSL"))
            (hsPkgs."openssl-streams" or (buildDepError "openssl-streams"))
            ]) ++ (pkgs.lib).optional (!(flags.portable || system.isWindows)) (hsPkgs."unix" or (buildDepError "unix"));
          };
        };
      tests = {
        "testsuite" = {
          depends = ([
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."io-streams-haproxy" or (buildDepError "io-streams-haproxy"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."threads" or (buildDepError "threads"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."http-streams" or (buildDepError "http-streams"))
            (hsPkgs."http-common" or (buildDepError "http-common"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            ] ++ (pkgs.lib).optional (!(flags.portable || system.isWindows)) (hsPkgs."unix" or (buildDepError "unix"))) ++ (pkgs.lib).optionals (flags.openssl) [
            (hsPkgs."HsOpenSSL" or (buildDepError "HsOpenSSL"))
            (hsPkgs."openssl-streams" or (buildDepError "openssl-streams"))
            ];
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."io-streams-haproxy" or (buildDepError "io-streams-haproxy"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }