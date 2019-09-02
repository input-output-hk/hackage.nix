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
    flags = {
      use-system-library = false;
      pkg-config = true;
      non-optimised-c = false;
      };
    package = {
      specVersion = "1.22";
      identifier = { name = "argon2"; version = "1.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "Ollie Charles, Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "Memory-hard password hash and proof-of-work function";
      description = "Argon2 is the key derivation function (KDF) selected as the winner of the [Password Hashing Competition](https://en.wikipedia.org/wiki/Password_Hashing_Competition). The API exposed by this bindings provide access to the 3 specified variants\n\n* @Argon2d@ (maximize resistance to GPU cracking attacks),\n* @Argon2i@ (optimized to resist side-channel attacks), and\n* @Argon2id@ (hybrid version combining @Argon2d@ and @Argon2i@)\n\nand allows to control various parameters (time cost, memory cost, parallelism) of the Argon2 function. Moreover, it is also supported to generate and verify the deprecated version 1.0 hashes, as well as the current version 1.3 hashes.\n\nThe Haskell API supports both raw binary hashes as well as the ASCII-based [PHC string format](https://github.com/P-H-C/phc-string-format/blob/master/phc-sf-spec.md).\n\nThis version provides bindings to the \\\"@20171227@\\\" release of the [Argon2 reference implementation (libargon2)](https://github.com/P-H-C/phc-winner-argon2) of the Argon2 password-hashing function.\n\nPlease refer to the [Argon2 specification](https://github.com/P-H-C/phc-winner-argon2/blob/master/argon2-specs.pdf) for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."text-short" or (buildDepError "text-short"))
          ];
        libs = (pkgs.lib).optionals (flags.use-system-library) ((pkgs.lib).optional (!flags.pkg-config) (pkgs."argon2" or (sysDepError "argon2")));
        pkgconfig = (pkgs.lib).optionals (flags.use-system-library) ((pkgs.lib).optional (flags.pkg-config) (pkgconfPkgs."libargon2" or (pkgConfDepError "libargon2")));
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."argon2" or (buildDepError "argon2"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            ];
          };
        };
      };
    }