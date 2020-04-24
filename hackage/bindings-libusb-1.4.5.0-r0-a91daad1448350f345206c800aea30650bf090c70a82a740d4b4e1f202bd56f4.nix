{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "bindings-libusb"; version = "1.4.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      homepage = "https://github.com/basvandijk/bindings-libusb";
      url = "";
      synopsis = "Low level bindings to libusb.";
      description = "Low level bindings to @libusb-1.*@:\n\n<http://libusb.sourceforge.net/api-1.0/>\n\nThis package uses @bindings-DSL@\nand conforms to its naming convention.\n\nFor a higher-level and more Haskell friendly binding\n(which uses this package) see the @usb@ package:\n\n<http://hackage.haskell.org/package/usb>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          ];
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."libusb-1.0" or ((hsPkgs.pkgs-errors).sysDepError "libusb-1.0"));
        pkgconfig = (pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."libusb-1.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "libusb-1.0"));
        buildable = true;
        };
      };
    }