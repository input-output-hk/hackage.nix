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
      identifier = { name = "pkcs7"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "coder@kyleisom.net";
      author = "K. Isom";
      homepage = "https://github.com/kisom/pkcs7";
      url = "";
      synopsis = "PKCS #7 padding in Haskell";
      description = "Implements PKCS #7 padding.\nThis implements the PKCS #7 padding scheme. This\nscheme is defined in <http://tools.ietf.org/html/rfc5652#section-6.3 RFC 5652, section 6.3>.\nStrings will be padded out to multiples of the block\nsize; for example, a 5-byte string with an 8-byte\nblock size will have three bytes of padding added. If\nthe length is already a multiple of the block size,\nan entire block size worth of padding is added.\nThe padding bytes are all set to the number of\npadding bytes. Returning to the previous example, the\npadding string would be three bytes of the byte 0x03.\nUnpadding checks the length and padding, and if\nthis is valid, strips off the padding.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        };
      tests = {
        "test-pkcs7" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            ];
          };
        };
      };
    }