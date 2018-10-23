{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "socket";
        version = "0.5.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "info@lars-petersen.net";
      author = "Lars Petersen";
      homepage = "https://github.com/lpeterse/haskell-socket";
      url = "";
      synopsis = "A portable and extensible sockets library.";
      description = "This library is a minimal and platform-independant interface for\nBSD style networking.\n\nThe following is a list of known extension packages:\n\n- https://hackage.haskell.org/package/socket-sctp\n\nAlso see README.md for details.";
      buildType = "Simple";
    };
    components = {
      "socket" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = pkgs.lib.optional (system.isWindows) (pkgs."ws2_32");
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "UDP" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.socket)
            (hsPkgs.async)
          ];
        };
        "TCP" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.socket)
            (hsPkgs.async)
          ];
        };
        "TCP-sendAndRecvAll" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.socket)
            (hsPkgs.async)
          ];
        };
        "PingPong" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.socket)
            (hsPkgs.async)
          ];
        };
        "AddrInfo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.socket)
          ];
        };
        "NonBlockingIO" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.socket)
            (hsPkgs.async)
          ];
        };
        "NonBlockingIO-threaded" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.socket)
            (hsPkgs.async)
          ];
        };
        "IPV6_V6ONLY" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.socket)
            (hsPkgs.async)
          ];
        };
      };
    };
  }