{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "network-multicast"; version = "0.0.6"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2008-2010 Audrey Tang";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "";
      url = "";
      synopsis = "Simple multicast library";
      description = "The \"Network.Multicast\" module is for sending\nUDP datagrams over multicast (class D) addresses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.network) (hsPkgs.network) ];
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."ws2_32");
        };
      };
    }