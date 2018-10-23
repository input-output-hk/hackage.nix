{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      network-bytestring = false;
      allow-sendfilefd = true;
      warp-debug = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "warp";
        version = "3.0.0.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Kazu Yamamoto, Matt Brown";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "A fast, light-weight web server for WAI applications.";
      description = "The premier WAI handler. For more information, see <http://steve.vinoski.net/blog/2011/05/01/warp-a-haskell-web-server/>.\n\nChangelog\n\n[3.0.0] WAI no longer uses conduit for its streaming interface.\n\n[2.1.0] The @onOpen@ and @onClose@ settings now provide the @SockAddr@ of the client, and @onOpen@ can return a @Bool@ which will close the connection. The @responseRaw@ response has been added, which provides a more elegant way to handle WebSockets than the previous @settingsIntercept@. The old settings accessors have been deprecated in favor of new setters, which will allow settings changes to be made in the future without breaking backwards compatibility.\n\n[2.0.0] ResourceT is not used anymore. Request and Response is now abstract data types. To use their constructors, Internal module should be imported.\n\n[1.3.9] Support for byte range requests.\n\n[1.3.7] Sockets now have FD_CLOEXEC set on them. This behavior is more secure, and the change should not affect the vast majority of use cases. However, it appeared that this is buggy and is fixed in 2.0.0.";
      buildType = "Simple";
    };
    components = {
      "warp" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.ghc-prim)
          (hsPkgs.http-types)
          (hsPkgs.simple-sendfile)
          (hsPkgs.unix-compat)
          (hsPkgs.void)
          (hsPkgs.wai)
          (hsPkgs.text)
          (hsPkgs.streaming-commons)
        ] ++ (if flags.network-bytestring
          then [
            (hsPkgs.network)
            (hsPkgs.network-bytestring)
          ]
          else [
            (hsPkgs.network)
          ])) ++ pkgs.lib.optional ((system.isLinux || system.isFreebsd || system.isOsx) && flags.allow-sendfilefd) (hsPkgs.hashable)) ++ (if system.isWindows
          then [
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ]
          else [
            (hsPkgs.unix)
            (hsPkgs.http-date)
          ]);
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.ghc-prim)
            (hsPkgs.HTTP)
            (hsPkgs.http-types)
            (hsPkgs.lifted-base)
            (hsPkgs.simple-sendfile)
            (hsPkgs.transformers)
            (hsPkgs.unix-compat)
            (hsPkgs.void)
            (hsPkgs.wai)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.text)
            (hsPkgs.streaming-commons)
            (hsPkgs.async)
          ] ++ pkgs.lib.optionals ((system.isLinux || system.isFreebsd || system.isOsx) && flags.allow-sendfilefd) [
            (hsPkgs.unix)
            (hsPkgs.hashable)
            (hsPkgs.http-date)
          ];
        };
      };
      benchmarks = {
        "parser" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.http-types)
            (hsPkgs.network)
            (hsPkgs.network)
          ];
        };
      };
    };
  }