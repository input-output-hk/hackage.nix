{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "socket-sctp"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "shea@shealevy.com";
      author = "Lars Petersen, Shea Levy <shea@shealevy.com>";
      homepage = "https://github.com/shlevy/haskell-socket-sctp";
      url = "";
      synopsis = "STCP socket extensions library.";
      description = "This is a binding to the types and operations of `libsctp`.\nThis library is intended to used in conjunction with the `socket`\nlibrary it depends on.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.socket) ];
        libs = (pkgs.lib).optional (!system.isFreebsd) (pkgs."sctp");
        build-tools = [ ((hsPkgs.buildPackages).hsc2hs) ];
        };
      tests = {
        "SendReceiveMessage" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.socket)
            (hsPkgs.socket-sctp)
            ];
          };
        "TooSmallBuffer" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.socket)
            (hsPkgs.socket-sctp)
            ];
          };
        "SendAll" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.socket)
            (hsPkgs.socket-sctp)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hsc2hs) ];
          };
        "Notifications" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.socket)
            (hsPkgs.socket-sctp)
            ];
          };
        };
      };
    }