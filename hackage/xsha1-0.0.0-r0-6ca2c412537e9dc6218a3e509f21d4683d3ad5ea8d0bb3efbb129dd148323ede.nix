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
    flags = { split-base = true; };
    package = {
      specVersion = "1.4";
      identifier = { name = "xsha1"; version = "0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Alex Kropivny <alex.kropivny@gmail.com>";
      author = "Alex Kropivny <alex.kropivny@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "cryptanalysis of Blizzard's broken SHA-1 implementation.";
      description = "Caution: XSHA1 is weak, and should not be used as a hash.\n\nXSHA1 is used in password and CD key authentication in older Blizzard games\n(Starcraft, Diablo 2) among other things. The fact that it's cryptographically\nweak has been known for years: this is a public analysis of the weakness. The\ngoal is to determine risk posed to users, and find safeguards if possible.\n\n\nThe code is geared for rapid interactive development with GHCI. Excuse the lax conventions.\n\nData.Digest.* implements and explores XSHA1, while Data.Codec.* contains applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          ];
        };
      };
    }