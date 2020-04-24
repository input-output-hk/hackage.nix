{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usb = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "blink1"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "Control library for blink(1) LED from ThingM";
      description = "Provides an interface to the ThingM blink(1) LED <http://thingm.com/products/blink-1.html> similar to (but not dependent on) <http://github.com/todbot/blink1> via Linux hidraw or the libusb-based usb package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (pkgs.lib).optional (system.isLinux) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))) ++ (pkgs.lib).optionals (flags.usb) [
          (hsPkgs."usb" or ((hsPkgs.pkgs-errors).buildDepError "usb"))
          (hsPkgs."bindings-libusb" or ((hsPkgs.pkgs-errors).buildDepError "bindings-libusb"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }