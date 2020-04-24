{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "tuntap"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Van Enk <vanenkj@gmail.com>";
      author = "John Van Enk <vanenkj@gmail.com>";
      homepage = "";
      url = "http://github.com/sw17ch/tuntap";
      synopsis = "Interface to TUN/TAP drivers.";
      description = "TUN/TAP is a virtual network adapter supported by serveral\noperating systems.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (system.isLinux) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))) ++ (pkgs.lib).optional (system.isOsx || system.isFreebsd) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"));
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."Iphlpapi" or ((hsPkgs.pkgs-errors).sysDepError "Iphlpapi"))
          (pkgs."ws2_32" or ((hsPkgs.pkgs-errors).sysDepError "ws2_32"))
          ];
        buildable = true;
        };
      };
    }