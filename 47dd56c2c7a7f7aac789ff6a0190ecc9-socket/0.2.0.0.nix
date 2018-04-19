{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "socket";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "info@lars-petersen.net";
        author = "Lars Petersen";
        homepage = "https://github.com/lpeterse/haskell-socket";
        url = "";
        synopsis = "A binding to the POSIX sockets interface";
        description = "This package provides access to the system's socket interface with POSIX semantics.\n\nThe library is designed to be threadsafe and establishes a thin layer on\ntop of the underlying ccalls to help with the development of concurrent applications.\nIt integrates with GHC's event management mechanism (which itself uses epoll,\nlibev or similar) and makes all functions have blocking semantics\nwithout actually blocking the runtime system.\n\nThis is a community project :-) Don't hesitate to request features on the\nissue tracker or even implement some and send a pull request.";
        buildType = "Simple";
      };
      components = {
        socket = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        tests = {
          basic = {
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