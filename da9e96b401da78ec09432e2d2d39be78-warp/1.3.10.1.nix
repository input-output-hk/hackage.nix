{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
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
        version = "1.3.10.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Kazu Yamamoto, Matt Brown";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "A fast, light-weight web server for WAI applications.";
      description = "The premier WAI handler. For more information, see <http://steve.vinoski.net/blog/2011/05/01/warp-a-haskell-web-server/>.\n\nChangelog\n\n[1.3.9] Support for byte range requests.\n\n[1.3.7] Sockets now have FD_CLOEXEC set on them. This behavior is more secure, and the change should not affect the vast majority of use cases.";
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
          (hsPkgs.http-attoparsec)
        ] ++ (if _flags.network-bytestring
          then [
            (hsPkgs.network)
            (hsPkgs.network-bytestring)
          ]
          else [
            (hsPkgs.network)
          ])) ++ pkgs.lib.optional ((system.isLinux || system.isFreebsd || system.isOsx) && _flags.allow-sendfilefd) (hsPkgs.hashable)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
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
            (hsPkgs.HTTP)
            (hsPkgs.http-types)
            (hsPkgs.lifted-base)
            (hsPkgs.network-conduit)
            (hsPkgs.simple-sendfile)
            (hsPkgs.transformers)
            (hsPkgs.unix-compat)
            (hsPkgs.void)
            (hsPkgs.wai)
            (hsPkgs.http-attoparsec)
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