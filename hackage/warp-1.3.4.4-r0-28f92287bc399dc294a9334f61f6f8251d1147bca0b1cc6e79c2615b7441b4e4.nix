{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-bytestring = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "warp"; version = "1.3.4.4"; };
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
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-builder-conduit)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.ghc-prim)
          (hsPkgs.http-types)
          (hsPkgs.lifted-base)
          (hsPkgs.network-conduit)
          (hsPkgs.simple-sendfile)
          (hsPkgs.transformers)
          (hsPkgs.unix-compat)
          (hsPkgs.void)
          (hsPkgs.wai)
          ] ++ (if flags.network-bytestring
          then [ (hsPkgs.network) (hsPkgs.network-bytestring) ]
          else [
            (hsPkgs.network)
            ])) ++ (pkgs.lib).optionals (system.isLinux || system.isFreebsd || system.isOsx) [
          (hsPkgs.unix)
          (hsPkgs.hashable)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-builder-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.ghc-prim)
            (hsPkgs.http-types)
            (hsPkgs.lifted-base)
            (hsPkgs.network-conduit)
            (hsPkgs.simple-sendfile)
            (hsPkgs.transformers)
            (hsPkgs.unix-compat)
            (hsPkgs.void)
            (hsPkgs.wai)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.unix)
            (hsPkgs.hashable)
            ];
          };
        };
      };
    }