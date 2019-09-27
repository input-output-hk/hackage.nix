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
      specVersion = "1.10";
      identifier = { name = "protobuf-native"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014, National ICT Australia Limited (NICTA)";
      maintainer = "maxwell.swadling@nicta.com.au";
      author = "Maxwell Swadling";
      homepage = "https://github.com/nicta/protobuf-native";
      url = "";
      synopsis = "Protocol Buffers via C++";
      description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\nprotobuf-native uses the code generated from protobuf for C++\nin Haskell.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."cplusplus-th" or (buildDepError "cplusplus-th"))
          ];
        libs = [
          (pkgs."protobuf" or (sysDepError "protobuf"))
          (pkgs."c++" or (sysDepError "c++"))
          ];
        buildable = true;
        };
      exes = {
        "protobuf-native-test" = {
          depends = [
            (hsPkgs."protobuf-native" or (buildDepError "protobuf-native"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      tests = {
        "quickcheck" = {
          depends = [
            (hsPkgs."protobuf-native" or (buildDepError "protobuf-native"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "benchmark" = {
          depends = [
            (hsPkgs."protobuf-native" or (buildDepError "protobuf-native"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."protobuf" or (buildDepError "protobuf"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."cplusplus-th" or (buildDepError "cplusplus-th"))
            (hsPkgs."protocol-buffers-fork" or (buildDepError "protocol-buffers-fork"))
            (hsPkgs."hprotoc-fork" or (buildDepError "hprotoc-fork"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }