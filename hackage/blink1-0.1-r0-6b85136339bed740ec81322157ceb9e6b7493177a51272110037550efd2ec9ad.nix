{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "blink1"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "Control library for blink(1) LED from ThingM";
      description = "Provides an interface to the ThingM blink(1) LED <http://thingm.com/products/blink-1.html> similar to (but not dependent on) <http://github.com/todbot/blink1>.  Currently only a partially-functional Linux HIDRAW-based interface is defined, but a libusb-based one is planned.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (pkgs.lib).optionals (system.isLinux) [
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."ioctl" or (errorHandler.buildDepError "ioctl"))
          ];
        buildable = true;
        };
      };
    }