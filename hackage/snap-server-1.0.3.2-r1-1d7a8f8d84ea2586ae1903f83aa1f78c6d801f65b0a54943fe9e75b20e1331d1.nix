{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
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
      identifier = {
        name = "snap-server";
        version = "1.0.3.2";
      };
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
        depends  = ([
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.case-insensitive)
          (hsPkgs.clock)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.io-streams)
          (hsPkgs.io-streams-haproxy)
          (hsPkgs.lifted-base)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.snap-core)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unix-compat)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optional (!(flags.portable || system.isWindows)) (hsPkgs.unix)) ++ pkgs.lib.optionals (flags.openssl) [
          (hsPkgs.HsOpenSSL)
          (hsPkgs.openssl-streams)
        ];
      };
      exes = {
        "snap-test-pong-server" = {
          depends  = ([
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.case-insensitive)
            (hsPkgs.clock)
            (hsPkgs.containers)
            (hsPkgs.io-streams)
            (hsPkgs.io-streams-haproxy)
            (hsPkgs.lifted-base)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.snap-core)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix-compat)
            (hsPkgs.vector)
          ] ++ pkgs.lib.optional (!(flags.portable || system.isWindows)) (hsPkgs.unix)) ++ pkgs.lib.optionals (flags.openssl) [
            (hsPkgs.HsOpenSSL)
            (hsPkgs.openssl-streams)
          ];
        };
        "snap-test-server" = {
          depends  = ([
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.case-insensitive)
            (hsPkgs.clock)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.io-streams)
            (hsPkgs.io-streams-haproxy)
            (hsPkgs.lifted-base)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.snap-core)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix-compat)
            (hsPkgs.vector)
          ] ++ pkgs.lib.optionals (flags.openssl) [
            (hsPkgs.HsOpenSSL)
            (hsPkgs.openssl-streams)
          ]) ++ pkgs.lib.optional (!(flags.portable || system.isWindows)) (hsPkgs.unix);
        };
      };
      tests = {
        "testsuite" = {
          depends  = ([
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring-builder)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.clock)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.io-streams)
            (hsPkgs.io-streams-haproxy)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.random)
            (hsPkgs.snap-core)
            (hsPkgs.text)
            (hsPkgs.threads)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix-compat)
            (hsPkgs.vector)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.deepseq)
            (hsPkgs.http-streams)
            (hsPkgs.http-common)
            (hsPkgs.parallel)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ] ++ pkgs.lib.optional (!(flags.portable || system.isWindows)) (hsPkgs.unix)) ++ pkgs.lib.optionals (flags.openssl) [
            (hsPkgs.HsOpenSSL)
            (hsPkgs.openssl-streams)
          ];
        };
      };
      benchmarks = {
        "benchmark" = {
          depends  = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.criterion)
            (hsPkgs.io-streams)
            (hsPkgs.io-streams-haproxy)
            (hsPkgs.snap-core)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }