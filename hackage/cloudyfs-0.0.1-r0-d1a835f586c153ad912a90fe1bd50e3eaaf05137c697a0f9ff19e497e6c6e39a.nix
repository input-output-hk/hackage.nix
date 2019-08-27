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
      specVersion = "1.6";
      identifier = { name = "cloudyfs"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Brendan Hickey <brendan@bhickey.net>";
      author = "Brendan Hickey <brendan@bhickey.net>";
      homepage = "";
      url = "";
      synopsis = "A cloud in the file system.";
      description = "A cloud in the file system.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cloudyfs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."HFuse" or (buildDepError "HFuse"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."timerep" or (buildDepError "timerep"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."datetime" or (buildDepError "datetime"))
            ];
          };
        };
      };
    }