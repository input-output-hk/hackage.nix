{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "network-multicast"; version = "0.0.12"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2008-2014 Audrey Tang";
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
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."ws2_32" or ((hsPkgs.pkgs-errors).sysDepError "ws2_32"));
        buildable = true;
        };
      };
    }