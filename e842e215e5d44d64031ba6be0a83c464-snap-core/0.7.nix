{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      portable = false;
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snap-core";
          version = "0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "snap@snapframework.com";
        author = "James Sanders, Shu-yu Guo, Gregory Collins, Doug Beardsley";
        homepage = "http://snapframework.com/";
        url = "";
        synopsis = "Snap: A Haskell Web Framework (Core)";
        description = "Snap is a simple and fast web development framework and server written in\nHaskell. For more information or to download the latest version, you can\nvisit the Snap project website at <http://snapframework.com/>.\n\nThis library contains the core definitions and types for the Snap framework,\nincluding:\n\n1. Primitive types and functions for HTTP (requests, responses, cookies,\npost/query parameters, etc)\n\n2. Type aliases and helper functions for Iteratee I/O\n\n3. A monad for programming web handlers called \\\"Snap\\\", inspired by\nhappstack's (<http://happstack.com/index.html>), which allows:\n\n* Stateful access to the HTTP request and response objects\n\n* Monadic failure (i.e. MonadPlus/Alternative instances) for declining\nto handle requests and chaining handlers together\n\n* Early termination of the computation if you know early what you want\nto return and want to prevent further monadic processing\n\n/Quick start/: The 'Snap' monad and HTTP definitions are in \"Snap.Core\",\nsome iteratee utilities are in \"Snap.Iteratee\".\n\nHigher-level facilities for building web applications (like user/session\nmanagement, component interfaces, data modeling, etc.) are planned but not\nyet implemented, so this release will mostly be of interest for those who:\n\n* need a fast and minimal HTTP API at roughly the same level of abstraction\nas Java servlets, or\n\n* are interested in contributing to the Snap Framework project.";
        buildType = "Simple";
      };
      components = {
        snap-core = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.attoparsec-enumerator
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.blaze-builder
            hsPkgs.blaze-builder-enumerator
            hsPkgs.bytestring
            hsPkgs.bytestring-nums
            hsPkgs.case-insensitive
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.dlist
            hsPkgs.enumerator
            hsPkgs.filepath
            hsPkgs.HUnit
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.mtl
            hsPkgs.mwc-random
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.regex-posix
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unix-compat
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.zlib-enum
          ] ++ pkgs.lib.optionals (!(_flags.portable || system.isWindows)) [
            hsPkgs.bytestring-mmap
            hsPkgs.unix
          ];
        };
      };
    }