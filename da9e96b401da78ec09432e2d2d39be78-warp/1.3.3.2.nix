{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      network-bytestring = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "warp";
          version = "1.3.3.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman, Kazu Yamamoto, Matt Brown";
        homepage = "http://github.com/yesodweb/wai";
        url = "";
        synopsis = "A fast, light-weight web server for WAI applications.";
        description = "The premier WAI handler. For more information, see <http://steve.vinoski.net/blog/2011/05/01/warp-a-haskell-web-server/>.";
        buildType = "Simple";
      };
      components = {
        warp = {
          depends  = ([
            hsPkgs.base
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
            ])) ++ optionals (system.isLinux || system.isFreebsd || system.isOsx) [
            hsPkgs.unix
            hsPkgs.hashable
          ];
        };
      };
    }