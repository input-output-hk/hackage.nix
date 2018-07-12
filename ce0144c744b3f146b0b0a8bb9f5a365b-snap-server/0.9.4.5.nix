{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      portable = false;
      openssl = false;
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snap-server";
          version = "0.9.4.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "snap@snapframework.com";
        author = "James Sanders, Gregory Collins, Doug Beardsley";
        homepage = "http://snapframework.com/";
        url = "";
        synopsis = "A fast, iteratee-based, epoll-enabled web server for the Snap Framework";
        description = "Snap is a simple and fast web development framework and server written in\nHaskell. For more information or to download the latest version, you can\nvisit the Snap project website at <http://snapframework.com/>.\n\nThe Snap HTTP server is a high performance, epoll-enabled, iteratee-based web\nserver library written in Haskell. Together with the @snap-core@ library upon\nwhich it depends, it provides a clean and efficient Haskell programming\ninterface to the HTTP protocol.";
        buildType = "Simple";
      };
      components = {
        "snap-server" = {
          depends  = ([
            hsPkgs.attoparsec
            hsPkgs.attoparsec-enumerator
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.blaze-builder-enumerator
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.containers
            hsPkgs.enumerator
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.snap-core
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unix-compat
          ] ++ pkgs.lib.optional (!(_flags.portable || system.isWindows)) hsPkgs.unix) ++ pkgs.lib.optional _flags.openssl hsPkgs.HsOpenSSL;
        };
      };
    }