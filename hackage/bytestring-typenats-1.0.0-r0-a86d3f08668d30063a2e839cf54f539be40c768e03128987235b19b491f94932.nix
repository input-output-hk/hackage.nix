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
    flags = { usecereal = true; usebinary = true; usearbitrary = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bytestring-typenats"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy.groven@gmail.com";
      author = "Jeremy Groven";
      homepage = "https://github.com/tsuraan/bytestring-typenats";
      url = "";
      synopsis = "Bytestrings with typenat lengths";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."entropy" or (buildDepError "entropy"))
          ] ++ (pkgs.lib).optional (flags.usecereal) (hsPkgs."cereal" or (buildDepError "cereal"))) ++ (pkgs.lib).optional (flags.usebinary) (hsPkgs."binary" or (buildDepError "binary"))) ++ (pkgs.lib).optionals (flags.usearbitrary) [
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."blake2" or (buildDepError "blake2"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          ];
        };
      tests = {
        "test-all" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."bytestring-typenats" or (buildDepError "bytestring-typenats"))
            ] ++ (pkgs.lib).optional (flags.usearbitrary) (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"));
          };
        };
      benchmarks = {
        "benchmark-all" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."bytestring-typenats" or (buildDepError "bytestring-typenats"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optional (flags.usearbitrary) (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"));
          };
        };
      };
    }