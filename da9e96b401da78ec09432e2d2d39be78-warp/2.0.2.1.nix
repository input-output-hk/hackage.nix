{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-bytestring = false;
      allow-sendfilefd = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "warp";
          version = "2.0.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman, Kazu Yamamoto, Matt Brown";
        homepage = "http://github.com/yesodweb/wai";
        url = "";
        synopsis = "A fast, light-weight web server for WAI applications.";
        description = "The premier WAI handler. For more information, see <http://steve.vinoski.net/blog/2011/05/01/warp-a-haskell-web-server/>.\n\nChangelog\n\n[2.0.0] ResourceT is not used anymore. Request and Response is now abstract data types. To use their constructors, Internal module should be imported.\n\n[1.3.9] Support for byte range requests.\n\n[1.3.7] Sockets now have FD_CLOEXEC set on them. This behavior is more secure, and the change should not affect the vast majority of use cases. However, it appeared that this is buggy and is fixed in 2.0.0.";
        buildType = "Simple";
      };
      components = {
        warp = {
          depends  = (([
            hsPkgs.base
            hsPkgs.array
            hsPkgs.blaze-builder
            hsPkgs.blaze-builder-conduit
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.conduit
            hsPkgs.ghc-prim
            hsPkgs.http-types
            hsPkgs.lifted-base
            hsPkgs.network-conduit
            hsPkgs.simple-sendfile
            hsPkgs.transformers
            hsPkgs.unix-compat
            hsPkgs.void
            hsPkgs.wai
          ] ++ (if _flags.network-bytestring
            then [
              hsPkgs.network
              hsPkgs.network-bytestring
            ]
            else [
              hsPkgs.network
            ])) ++ pkgs.lib.optional ((system.isLinux || system.isFreebsd || system.isOsx) && _flags.allow-sendfilefd) hsPkgs.hashable) ++ (if system.isWindows
            then [
              hsPkgs.time
              hsPkgs.old-locale
            ]
            else [
              hsPkgs.unix
              hsPkgs.http-date
            ]);
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.blaze-builder
              hsPkgs.blaze-builder-conduit
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.conduit
              hsPkgs.ghc-prim
              hsPkgs.HTTP
              hsPkgs.http-types
              hsPkgs.lifted-base
              hsPkgs.network-conduit
              hsPkgs.simple-sendfile
              hsPkgs.transformers
              hsPkgs.unix-compat
              hsPkgs.void
              hsPkgs.wai
              hsPkgs.network
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.time
              hsPkgs.old-locale
            ] ++ pkgs.lib.optionals ((system.isLinux || system.isFreebsd || system.isOsx) && _flags.allow-sendfilefd) [
              hsPkgs.unix
              hsPkgs.hashable
              hsPkgs.http-date
            ];
          };
        };
        benchmarks = {
          parser = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.http-types
              hsPkgs.network
            ];
          };
        };
      };
    }