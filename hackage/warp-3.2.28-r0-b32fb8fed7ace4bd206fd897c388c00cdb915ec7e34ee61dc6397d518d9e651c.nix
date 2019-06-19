{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      network-bytestring = false;
      allow-sendfilefd = true;
      warp-debug = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "warp"; version = "3.2.28"; };
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
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.auto-update)
          (hsPkgs.bsb-http-chunked)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.http-date)
          (hsPkgs.http-types)
          (hsPkgs.http2)
          (hsPkgs.iproute)
          (hsPkgs.simple-sendfile)
          (hsPkgs.stm)
          (hsPkgs.streaming-commons)
          (hsPkgs.text)
          (hsPkgs.time-manager)
          (hsPkgs.unix-compat)
          (hsPkgs.vault)
          (hsPkgs.wai)
          (hsPkgs.word8)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups)) ++ (if flags.network-bytestring
          then [ (hsPkgs.network) (hsPkgs.network-bytestring) ]
          else [ (hsPkgs.network) ])) ++ (if system.isWindows
          then [ (hsPkgs.time) ]
          else [ (hsPkgs.unix) ]);
        };
      tests = {
        "doctest" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        "spec" = {
          depends = (([
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.array)
            (hsPkgs.async)
            (hsPkgs.auto-update)
            (hsPkgs.bsb-http-chunked)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.ghc-prim)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-date)
            (hsPkgs.http-types)
            (hsPkgs.http2)
            (hsPkgs.iproute)
            (hsPkgs.lifted-base)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.simple-sendfile)
            (hsPkgs.stm)
            (hsPkgs.streaming-commons)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.time-manager)
            (hsPkgs.transformers)
            (hsPkgs.unix-compat)
            (hsPkgs.vault)
            (hsPkgs.wai)
            (hsPkgs.word8)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups)) ++ (pkgs.lib).optional ((system.isLinux || system.isFreebsd || system.isOsx) && flags.allow-sendfilefd) (hsPkgs.unix)) ++ (pkgs.lib).optional (system.isWindows) (hsPkgs.time);
          };
        };
      benchmarks = {
        "parser" = {
          depends = (([
            (hsPkgs.base)
            (hsPkgs.auto-update)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.gauge)
            (hsPkgs.hashable)
            (hsPkgs.http-date)
            (hsPkgs.http-types)
            (hsPkgs.network)
            (hsPkgs.network)
            (hsPkgs.time-manager)
            (hsPkgs.unix-compat)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups)) ++ (pkgs.lib).optional ((system.isLinux || system.isFreebsd || system.isOsx) && flags.allow-sendfilefd) (hsPkgs.unix)) ++ (pkgs.lib).optional (system.isWindows) (hsPkgs.time);
          };
        };
      };
    }