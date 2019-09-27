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
    flags = { executable = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "vhd"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "Citrix Systems Inc.";
      maintainer = "vincent.hanquez@citrix.com";
      author = "Jonathan Knowles, Vincent Hanquez";
      homepage = "https://github.com/vincenthz/hs-vhd";
      url = "";
      synopsis = "Provides functions to inspect and manipulate virtual hard disk (VHD) files.";
      description = "Provides functions to inspect and manipulate virtual hard disk (VHD) files, according to the VHD specification (version 1.0).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."byteable" or (buildDepError "byteable"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."mmap" or (buildDepError "mmap"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."storable-endian" or (buildDepError "storable-endian"))
          (hsPkgs."cipher-aes" or (buildDepError "cipher-aes"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          ];
        buildable = true;
        };
      exes = {
        "vhd" = {
          depends = (pkgs.lib).optionals (flags.executable) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."byteable" or (buildDepError "byteable"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mmap" or (buildDepError "mmap"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."storable-endian" or (buildDepError "storable-endian"))
            (hsPkgs."vhd" or (buildDepError "vhd"))
            (hsPkgs."cipher-aes" or (buildDepError "cipher-aes"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            ];
          buildable = if flags.executable then true else false;
          };
        };
      tests = {
        "test-vhd" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."byteable" or (buildDepError "byteable"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mmap" or (buildDepError "mmap"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."vhd" or (buildDepError "vhd"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            ];
          buildable = true;
          };
        };
      };
    }