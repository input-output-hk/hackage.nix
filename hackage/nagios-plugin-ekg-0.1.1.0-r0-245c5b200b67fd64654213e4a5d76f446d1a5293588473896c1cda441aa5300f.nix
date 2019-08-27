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
      identifier = { name = "nagios-plugin-ekg"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2015 Sharif Olorin and Anchor Systems";
      maintainer = "sio@tesser.org";
      author = "Sharif Olorin";
      homepage = "https://github.com/fractalcat/nagios-plugin-ekg";
      url = "";
      synopsis = "Monitor ekg metrics via Nagios";
      description = "A generic Nagios plugin which retrieves metrics\nfrom an application which uses\n<http://hackage.haskell.org/package/ekg ekg>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."nagios-check" or (buildDepError "nagios-check"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      exes = {
        "check_ekg" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."nagios-check" or (buildDepError "nagios-check"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."nagios-plugin-ekg" or (buildDepError "nagios-plugin-ekg"))
            ];
          };
        };
      tests = {
        "sample-data" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."nagios-check" or (buildDepError "nagios-check"))
            (hsPkgs."nagios-plugin-ekg" or (buildDepError "nagios-plugin-ekg"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }