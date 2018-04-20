{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      libev = false;
      portable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snap-server";
          version = "0.2.13";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "snap@snapframework.com";
        author = "James Sanders, Gregory Collins, Doug Beardsley";
        homepage = "http://snapframework.com/";
        url = "";
        synopsis = "A fast, iteratee-based, epoll-enabled web server for the Snap Framework";
        description = "This is the first developer prerelease of the Snap framework.  Snap is a\nsimple and fast web development framework and server written in Haskell. For\nmore information or to download the latest version, you can visit the Snap\nproject website at <http://snapframework.com/>.\n\nThe Snap HTTP server is a high performance, epoll-enabled, iteratee-based web\nserver library written in Haskell. Together with the @snap-core@ library upon\nwhich it depends, it provides a clean and efficient Haskell programming\ninterface to the HTTP protocol.\n\nHigher-level facilities for building web applications (like user/session\nmanagement, component interfaces, data modeling, etc.) are planned but not\nyet implemented, so this release will mostly be of interest for those who:\n\n* need a fast and minimal HTTP API at roughly the same level of abstraction\nas Java servlets, or\n\n* are interested in contributing to the Snap Framework project.";
        buildType = "Simple";
      };
      components = {
        snap-server = {
          depends  = ([
            hsPkgs.array
            hsPkgs.attoparsec
            hsPkgs.attoparsec-iteratee
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-nums
            hsPkgs.bytestring-show
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.directory-tree
            hsPkgs.dlist
            hsPkgs.filepath
            hsPkgs.iteratee
            hsPkgs.monads-fd
            hsPkgs.murmur-hash
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.snap-core
            hsPkgs.template-haskell
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unix-compat
            hsPkgs.vector
          ] ++ pkgs.lib.optional (!(_flags.portable || system.isWindows)) hsPkgs.unix) ++ (if _flags.libev
            then [ hsPkgs.hlibev ]
            else [
              hsPkgs.network-bytestring
              hsPkgs.PSQueue
            ]);
        };
      };
    }