{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "socket";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "info@lars-petersen.net";
      author = "Lars Petersen";
      homepage = "https://github.com/lpeterse/haskell-socket";
      url = "";
      synopsis = "A binding to the POSIX sockets interface";
      description = "This package provides access to the system's socket interface with POSIX semantics.\n\nThe library is designed to be threadsafe and establishes a thin layer on\ntop of the underlying ccalls to help with the development of concurrent applications.\nIt integrates with GHC's event management mechanism (which itself uses epoll\nor libev or similar) and makes all functions have blocking semantics\nwithout actually blocking the runtime system.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "basic" = {
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