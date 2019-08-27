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
    flags = { developer = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "zigbee-znet25"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 David Joyner";
      maintainer = "David Joyner <david@joynerhome.net>";
      author = "David Joyner <david@joynerhome.net>";
      homepage = "https://github.com/djoyner/zigbee-znet25";
      url = "";
      synopsis = "XBee ZNet 2.5 (ZigBee) wireless modem communications";
      description = "A protocol library enabling wireless communications via\nXBee/XBee-PRO (ZibBee) ZNet 2.5 RF modules.\n\nThe library performs binary encoding/decoding, on-the-wire framing,\nand error checking of control and data \"API\" frames.  In other words\nthe library expects to communicate with an XBee modem that has AP\nparameter = 2, indicating API frames with HDLC-like escape characters.\nThis mode provides for 8-bit transparent operation and is described in\nSection 6 of <ftp://ftp1.digi.com/support/documentation/90000866_C.pdf>.\n\nThe library code is 100% pure; nothing here depends on the\nIO monad and no particular modem device is assumed.  The code\ndepends on the @cereal@ package for serialization but is otherwise\npretty standard.  The test suite is based on @QuickCheck@ properties.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."zigbee-znet25" or (buildDepError "zigbee-znet25"))
            ];
          };
        };
      };
    }