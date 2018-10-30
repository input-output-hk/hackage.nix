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
      debug = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "snap-core";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "snap@snapframework.com";
      author = "Snap Framework Authors (see CONTRIBUTORS)";
      homepage = "http://snapframework.com/";
      url = "";
      synopsis = "Snap: A Haskell Web Framework (core interfaces and types)";
      description = "Snap is a simple and fast web development framework and server written in\nHaskell. For more information or to download the latest version, you can\nvisit the Snap project website at <http://snapframework.com/>.\n\nThis library contains the core definitions and types for the Snap framework,\nincluding:\n\n1. Primitive types and functions for HTTP (requests, responses, cookies,\npost/query parameters, etc)\n\n2. A monad for programming web handlers called \\\"Snap\\\", which allows:\n\n* Stateful access to the HTTP request and response objects\n\n* Monadic failure (i.e. MonadPlus/Alternative instances) for declining\nto handle requests and chaining handlers together\n\n* Early termination of the computation if you know early what you want\nto return and want to prevent further monadic processing\n\n/Quick start/: The 'Snap' monad and HTTP definitions are in \"Snap.Core\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.HUnit)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.lifted-base)
          (hsPkgs.io-streams)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.readable)
          (hsPkgs.regex-posix)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unix-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ] ++ (if flags.portable || system.isWindows
          then [
            (hsPkgs.time-locale-compat)
          ]
          else [ (hsPkgs.old-locale) ]);
      };
      tests = {
        "testsuite" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.lifted-base)
            (hsPkgs.io-streams)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.readable)
            (hsPkgs.regex-posix)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.unix-compat)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.QuickCheck)
            (hsPkgs.deepseq)
            (hsPkgs.parallel)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.zlib)
          ] ++ (if flags.portable || system.isWindows
            then [
              (hsPkgs.time-locale-compat)
            ]
            else [ (hsPkgs.old-locale) ]);
        };
      };
    };
  }