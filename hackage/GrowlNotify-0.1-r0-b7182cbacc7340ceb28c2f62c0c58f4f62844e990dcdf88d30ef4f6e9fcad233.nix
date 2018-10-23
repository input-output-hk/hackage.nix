{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "GrowlNotify";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nickburlett@mac.com";
      author = "Nick Burlett";
      homepage = "";
      url = "";
      synopsis = "Notification utility for Growl.";
      description = "Notification utility for Growl.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "growlnotify" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.haskell98)
            (hsPkgs.Crypto)
            (hsPkgs.binary)
          ];
          libs = [ (pkgs."pcap") ];
        };
      };
    };
  }