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
    flags = { bluez543 = false; hasbluez = true; hasdbus = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ble"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Julian K. Arni";
      maintainer = "jkarni@turingjump.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/plow-technologies/ble#readme";
      url = "";
      synopsis = "Bluetooth Low Energy (BLE) peripherals";
      description = "This package provides a Haskell API for writing Bluetooth Low Energy peripherals.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."d-bus" or (buildDepError "d-bus"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."microlens-ghc" or (buildDepError "microlens-ghc"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          ];
        buildable = true;
        };
      exes = {
        "auth" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."d-bus" or (buildDepError "d-bus"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-ghc" or (buildDepError "microlens-ghc"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."ble" or (buildDepError "ble"))
            ];
          buildable = true;
          };
        "hrs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."d-bus" or (buildDepError "d-bus"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-ghc" or (buildDepError "microlens-ghc"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."ble" or (buildDepError "ble"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            ];
          buildable = true;
          };
        "hrs-client" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."d-bus" or (buildDepError "d-bus"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-ghc" or (buildDepError "microlens-ghc"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."ble" or (buildDepError "ble"))
            ];
          buildable = true;
          };
        "readme" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."d-bus" or (buildDepError "d-bus"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-ghc" or (buildDepError "microlens-ghc"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."ble" or (buildDepError "ble"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."markdown-unlit" or (buildDepError "markdown-unlit"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."d-bus" or (buildDepError "d-bus"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-ghc" or (buildDepError "microlens-ghc"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."ble" or (buildDepError "ble"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            ];
          buildable = true;
          };
        };
      };
    }