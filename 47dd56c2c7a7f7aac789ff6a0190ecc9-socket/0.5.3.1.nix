{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "socket";
          version = "0.5.3.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "info@lars-petersen.net";
        author = "Lars Petersen";
        homepage = "https://github.com/lpeterse/haskell-socket";
        url = "";
        synopsis = "A portable and extensible sockets library.";
        description = "This library is a minimal and platform-independant interface for\nBSD style networking.\n\nAlso see README.md for details.";
        buildType = "Simple";
      };
      components = {
        socket = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = pkgs.lib.optional system.isWindows pkgs.ws2_32;
          build-tools = [ hsPkgs.hsc2hs ];
        };
        tests = {
          UDP = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.socket
              hsPkgs.async
            ];
          };
          TCP = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.socket
              hsPkgs.async
            ];
          };
          TCP-sendAndRecvAll = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.socket
              hsPkgs.async
            ];
          };
          PingPong = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.socket
              hsPkgs.async
            ];
          };
          AddrInfo = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.socket
            ];
          };
          NonBlockingIO = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.socket
              hsPkgs.async
            ];
          };
          NonBlockingIO-threaded = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.socket
              hsPkgs.async
            ];
          };
          IPV6_V6ONLY = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.socket
              hsPkgs.async
            ];
          };
          EPIPE = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.socket
              hsPkgs.async
            ];
          };
          EOPNOTSUPP = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.socket
              hsPkgs.async
            ];
          };
        };
      };
    }