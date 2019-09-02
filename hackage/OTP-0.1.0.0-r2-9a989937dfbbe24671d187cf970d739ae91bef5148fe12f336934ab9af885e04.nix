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
    flags = { pure-sha = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "OTP"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2012 Artem Leshchev,\n2016 Aleksey Uimanov,\n2018 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Artem Leshchev,\nAleksey Uimanov,\nHerbert Valerio Riedel";
      homepage = "https://github.com/hvr/OTP";
      url = "";
      synopsis = "HMAC-Based and Time-Based One-Time Passwords (HOTP & TOTP)";
      description = "Implements the /HMAC-Based One-Time Password Algorithm/ (HOTP) as\ndefined in [RFC 4226](https://tools.ietf.org/html/rfc4226)\nand the /Time-Based One-Time Password Algorithm/ (TOTP) as defined\nin [RFC 6238](https://tools.ietf.org/html/rfc6238).\n\nThe TOTP and HOTP algorithms are commonly used to implement two-step verification (2FA)\n(e.g. by [Google Authenticator](https://en.wikipedia.org/wiki/Google_Authenticator) ).\n\nSee module \"Data.OTP\" for API documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.pure-sha
          then [
            (hsPkgs."SHA" or (buildDepError "SHA"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time" or (buildDepError "time"))
            ]
          else [
            (hsPkgs."cryptohash-sha1" or (buildDepError "cryptohash-sha1"))
            (hsPkgs."cryptohash-sha256" or (buildDepError "cryptohash-sha256"))
            (hsPkgs."cryptohash-sha512" or (buildDepError "cryptohash-sha512"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."OTP" or (buildDepError "OTP"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          };
        };
      };
    }