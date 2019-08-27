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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Crypto"; version = "4.2.5.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Dominic Steinitz 2003 - 2007";
      maintainer = "Caylee Hogg <caylee.hogg@gmail.com>";
      author = "Dominic Steinitz";
      homepage = "";
      url = "";
      synopsis = "Collects together existing Haskell cryptographic functions into a package";
      description = "DES, Blowfish, AES, TEA, SHA1, MD5, RSA, BubbleBabble,\nHexdump, Support for Word128, Word192 and Word256 and Beyond, PKCS5\nPadding, Various Encryption Modes e.g. Cipher Block Chaining all in one package,\nwith HUnit and QuickCheck tests, and examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ]);
        };
      exes = {
        "SymmetricTest" = {};
        "SHA1Test" = {};
        "RSATest" = {};
        "QuickTest" = {};
        "HMACTest" = {};
        "WordListTest" = {};
        };
      };
    }