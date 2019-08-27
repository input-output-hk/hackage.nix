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
      identifier = { name = "gamgee"; version = "1.0.0"; };
      license = "MPL-2.0";
      copyright = "2018 Raghu Kaippully";
      maintainer = "rkaippully@gmail.com";
      author = "Raghu Kaippully";
      homepage = "https://github.com/rkaippully/gamgee#readme";
      url = "";
      synopsis = "Tool for generating TOTP MFA tokens.";
      description = "Tool for generating TOTP MFA tokens. Please see the README on GitHub at <https://github.com/rkaippully/gamgee#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."relude" or (buildDepError "relude"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."polysemy" or (buildDepError "polysemy"))
          (hsPkgs."polysemy-plugin" or (buildDepError "polysemy-plugin"))
          ];
        };
      exes = {
        "gamgee" = {
          depends = [
            (hsPkgs."gamgee" or (buildDepError "gamgee"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."relude" or (buildDepError "relude"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."polysemy" or (buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or (buildDepError "polysemy-plugin"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."Hclip" or (buildDepError "Hclip"))
            ];
          };
        };
      tests = {
        "gamgee-test" = {
          depends = [
            (hsPkgs."gamgee" or (buildDepError "gamgee"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."relude" or (buildDepError "relude"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."polysemy" or (buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or (buildDepError "polysemy-plugin"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        };
      };
    }