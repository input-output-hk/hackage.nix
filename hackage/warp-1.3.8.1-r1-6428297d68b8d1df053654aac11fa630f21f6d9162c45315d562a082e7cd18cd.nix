{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      network-bytestring = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "warp";
        version = "1.3.8.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Kazu Yamamoto, Matt Brown";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "A fast, light-weight web server for WAI applications.";
      description = "The premier WAI handler. For more information, see <http://steve.vinoski.net/blog/2011/05/01/warp-a-haskell-web-server/>.\n\nChangelog\n\n[1.3.7] Sockets now have FD_CLOEXEC set on them. This behavior is more secure, and the change should not affect the vast majority of use cases.";
      buildType = "Simple";
    };
    components = {
      "warp" = {
        depends  = (([
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
          then [
            (hsPkgs.network)
            (hsPkgs.network-bytestring)
          ]
          else [
            (hsPkgs.network)
          ])) ++ pkgs.lib.optional (system.isLinux || system.isFreebsd || system.isOsx) (hsPkgs.hashable)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      tests = {
        "spec" = {
          depends  = [
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