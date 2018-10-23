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
        version = "3.2.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Kazu Yamamoto, Matt Brown";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "A fast, light-weight web server for WAI applications.";
      description = "HTTP\\/1.0, HTTP\\/1.1 and HTTP\\/2 are supported.\nFor HTTP\\/2,  Warp supports direct and ALPN (in TLS)\nbut not upgrade.\nAPI docs and the README are available at\n<http://www.stackage.org/package/warp>.";
      buildType = "Simple";
    };
    components = {
      "warp" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.auto-update)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.http-types)
          (hsPkgs.iproute)
          (hsPkgs.http2)
          (hsPkgs.simple-sendfile)
          (hsPkgs.unix-compat)
          (hsPkgs.wai)
          (hsPkgs.text)
          (hsPkgs.streaming-commons)
          (hsPkgs.vault)
          (hsPkgs.stm)
          (hsPkgs.word8)
          (hsPkgs.hashable)
          (hsPkgs.http-date)
        ] ++ (if flags.network-bytestring
          then [
            (hsPkgs.network)
            (hsPkgs.network-bytestring)
          ]
          else [
            (hsPkgs.network)
          ])) ++ (if system.isWindows
          then [ (hsPkgs.time) ]
          else [ (hsPkgs.unix) ]);
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
            (hsPkgs.auto-update)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.case-insensitive)
            (hsPkgs.ghc-prim)
            (hsPkgs.HTTP)
            (hsPkgs.http-types)
            (hsPkgs.iproute)
            (hsPkgs.lifted-base)
            (hsPkgs.simple-sendfile)
            (hsPkgs.transformers)
            (hsPkgs.unix-compat)
            (hsPkgs.wai)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.streaming-commons)
            (hsPkgs.silently)
            (hsPkgs.async)
            (hsPkgs.vault)
            (hsPkgs.stm)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.http2)
            (hsPkgs.word8)
            (hsPkgs.hashable)
            (hsPkgs.http-date)
          ] ++ pkgs.lib.optional ((system.isLinux || system.isFreebsd || system.isOsx) && flags.allow-sendfilefd) (hsPkgs.unix);
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