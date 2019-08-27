let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "usb"; version = "1.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2009–2012 Bas van Dijk <v.dijk.bas@gmail.com>";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "http://basvandijk.github.com/usb";
      url = "";
      synopsis = "Communicate with USB devices";
      description = "This library enables you to communicate with USB devices from\nuserspace. It is implemented as a high-level wrapper around\n<http://hackage.haskell.org/package/bindings-libusb bindings-libusb>\nwhich is a low-level binding to the C library:\n<http://libusb.org/ libusb-1.*>.\n\nThe USB transfer functions in this library have a simple synchronous\ninterface (they block) but are implemented using the @libusb@\nasynchronous interface. They integrate with the GHC event manager\nmaking them efficient (no busy-loops) and interruptible (throwing an\nexception to the thread executing a transfer immediately cancels the\ntransfer).\n\nIf the GHC event manager is not available (because you're either not\nusing GHC or because you're on Windows) the library degrades\ngracefully to the @libusb@ synchronous implementation.\n\nThis documentation assumes knowledge of how to operate USB\ndevices from a software standpoint (descriptors, configurations,\ninterfaces, endpoints, control\\/bulk\\/interrupt\\/isochronous\ntransfers, etc). Full information can be found in the\n<http://www.usb.org/developers/docs/ USB 2.0 specification>.\n\nFor an example how to use this library see the\n<https://github.com/basvandijk/usb-example usb-example> package\nor the <http://hackage.haskell.org/package/ls-usb ls-usb> package.\n\nAlso see the <http://hackage.haskell.org/package/usb-safe usb-safe>\npackage which wraps this package and provides some strong safety\nguarantees for working with USB devices.\n\nFinally have a look at the\n<http://hackage.haskell.org/package/usb-iteratee usb-iteratee>\npackage which provides @iteratee@ enumerators for enumerating\nbulk, interrupt and isochronous endpoints:\n\nBesides this API documentation the following sources might be\ninteresting:\n\n* <http://libusb.sourceforge.net/api-1.0/ The libusb 1.0 documentation>.\n\n* <http://www.usb.org/developers/docs/ The USB 2.0 specification>.\n\n* <http://hackage.haskell.org/package/bindings-libusb The bindings-libusb documentation>.\n\n* <http://www.beyondlogic.org/usbnutshell/usb1.htm \"USB in a NutShell\">.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
          (hsPkgs."bindings-libusb" or (buildDepError "bindings-libusb"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).gt "7" && !system.isWindows) (hsPkgs."containers" or (buildDepError "containers"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2.1") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"));
        };
      };
    }