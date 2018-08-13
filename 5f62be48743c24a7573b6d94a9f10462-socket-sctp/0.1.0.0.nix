{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "socket-sctp";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "info@lars-petersen.net";
      author = "Lars Petersen";
      homepage = "https://github.com/lpeterse/haskell-socket-sctp";
      url = "";
      synopsis = "STCP socket extensions library.";
      description = "This is a binding to the types and operations of `libsctp`.\nIt's intended to be used in conjunction with the `socket`\nlibrary.";
      buildType = "Simple";
    };
    components = {
      "socket-sctp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.socket)
        ];
        libs = [ (pkgs.sctp) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "SendReceiveMessage" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.socket)
            (hsPkgs.socket-sctp)
          ];
        };
        "TooSmallBuffer" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.socket)
            (hsPkgs.socket-sctp)
          ];
        };
      };
    };
  }