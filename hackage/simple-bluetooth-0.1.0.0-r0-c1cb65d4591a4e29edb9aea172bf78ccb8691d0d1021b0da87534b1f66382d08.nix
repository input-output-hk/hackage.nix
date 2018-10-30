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
        name = "simple-bluetooth";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "docks.cattlemen.stephen@blacksapphire.com";
      author = "Stephen Blackheath";
      homepage = "";
      url = "";
      synopsis = "Simple Bluetooth API for Windows and Linux (bluez)";
      description = "You must use 'Network.withSocketsDo' at the start of your program\nfor Windows compatibility.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
        libs = if system.isWindows
          then [ (pkgs."ws2_32") ]
          else [ (pkgs."bluetooth") ];
      };
    };
  }