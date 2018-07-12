{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-bytestring = false;
      allow-sendfilefd = true;
      warp-debug = false;
      use-bytestring-builder = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "warp";
          version = "3.0.11";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman, Kazu Yamamoto, Matt Brown";
        homepage = "http://github.com/yesodweb/wai";
        url = "";
        synopsis = "A fast, light-weight web server for WAI applications.";
        description = "API docs and the README are available at <http://www.stackage.org/package/warp>.";
        buildType = "Simple";
      };
      components = {
        "warp" = {
          depends  = ((([
            hsPkgs.base
            hsPkgs.array
            hsPkgs.auto-update
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.ghc-prim
            hsPkgs.http-types
            hsPkgs.iproute
            hsPkgs.simple-sendfile
            hsPkgs.unix-compat
            hsPkgs.void
            hsPkgs.wai
            hsPkgs.text
            hsPkgs.streaming-commons
            hsPkgs.vault
          ] ++ (if _flags.network-bytestring
            then [
              hsPkgs.network
              hsPkgs.network-bytestring
            ]
            else [
              hsPkgs.network
            ])) ++ (if _flags.use-bytestring-builder
            then [
              hsPkgs.bytestring
              hsPkgs.bytestring-builder
            ]
            else [
              hsPkgs.bytestring
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
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          "spec" = {
            depends  = ([
              hsPkgs.base
              hsPkgs.array
              hsPkgs.auto-update
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.ghc-prim
              hsPkgs.HTTP
              hsPkgs.http-types
              hsPkgs.iproute
              hsPkgs.lifted-base
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
              hsPkgs.text
              hsPkgs.streaming-commons
              hsPkgs.async
              hsPkgs.vault
            ] ++ (if _flags.use-bytestring-builder
              then [
                hsPkgs.bytestring
                hsPkgs.bytestring-builder
              ]
              else [
                hsPkgs.bytestring
              ])) ++ pkgs.lib.optionals ((system.isLinux || system.isFreebsd || system.isOsx) && _flags.allow-sendfilefd) [
              hsPkgs.unix
              hsPkgs.hashable
              hsPkgs.http-date
            ];
          };
        };
        benchmarks = {
          "parser" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.http-types
              hsPkgs.network
              hsPkgs.network
            ];
          };
        };
      };
    }