{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      portable = false;
      debug = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "snap-core";
        version = "0.8.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "snap@snapframework.com";
      author = "James Sanders, Shu-yu Guo, Gregory Collins, Doug Beardsley";
      homepage = "http://snapframework.com/";
      url = "";
      synopsis = "Snap: A Haskell Web Framework (core interfaces and types)";
      description = "Snap is a simple and fast web development framework and server written in\nHaskell. For more information or to download the latest version, you can\nvisit the Snap project website at <http://snapframework.com/>.\n\nThis library contains the core definitions and types for the Snap framework,\nincluding:\n\n1. Primitive types and functions for HTTP (requests, responses, cookies,\npost/query parameters, etc)\n\n2. Type aliases and helper functions for Iteratee I/O\n\n3. A monad for programming web handlers called \\\"Snap\\\", which allows:\n\n* Stateful access to the HTTP request and response objects\n\n* Monadic failure (i.e. MonadPlus/Alternative instances) for declining\nto handle requests and chaining handlers together\n\n* Early termination of the computation if you know early what you want\nto return and want to prevent further monadic processing\n\n/Quick start/: The 'Snap' monad and HTTP definitions are in \"Snap.Core\",\nsome iteratee utilities are in \"Snap.Iteratee\".";
      buildType = "Simple";
    };
    components = {
      "snap-core" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-enumerator)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-builder-enumerator)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-nums)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.enumerator)
          (hsPkgs.filepath)
          (hsPkgs.HUnit)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.mtl)
          (hsPkgs.mwc-random)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.regex-posix)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unix-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.zlib-enum)
        ] ++ pkgs.lib.optionals (!(flags.portable || system.isWindows)) [
          (hsPkgs.bytestring-mmap)
          (hsPkgs.unix)
        ];
      };
    };
  }