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
    flags = { usb = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "blink1"; version = "0.4"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (pkgs.lib).optional (system.isLinux) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optionals (flags.usb) [
          (hsPkgs."usb" or (errorHandler.buildDepError "usb"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "blink1" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blink1" or (errorHandler.buildDepError "blink1"))
            ] ++ (pkgs.lib).optional (system.isLinux) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optionals (flags.usb) [
            (hsPkgs."usb" or (errorHandler.buildDepError "usb"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }