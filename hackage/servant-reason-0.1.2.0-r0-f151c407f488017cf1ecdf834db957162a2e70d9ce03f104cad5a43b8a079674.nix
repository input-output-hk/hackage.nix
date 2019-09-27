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
      specVersion = "1.12";
      identifier = { name = "servant-reason"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrei Barbu";
      maintainer = "andrei@0xab.com";
      author = "Andrei Barbu";
      homepage = "https://github.com/abarbu/servant-reason#readme";
      url = "";
      synopsis = "Derive Reason types to interact with a Haskell backend";
      description = "Please see the README on GitHub at <https://github.com/abarbu/servant-reason#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."reason-export" or (buildDepError "reason-export"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-foreign" or (buildDepError "servant-foreign"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      tests = {
        "servant-reason-compile-test" = {
          depends = [
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."interpolate" or (buildDepError "interpolate"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mockery" or (buildDepError "mockery"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."reason-export" or (buildDepError "reason-export"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-foreign" or (buildDepError "servant-foreign"))
            (hsPkgs."servant-reason" or (buildDepError "servant-reason"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        "servant-reason-test" = {
          depends = [
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."interpolate" or (buildDepError "interpolate"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mockery" or (buildDepError "mockery"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."reason-export" or (buildDepError "reason-export"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-foreign" or (buildDepError "servant-foreign"))
            (hsPkgs."servant-reason" or (buildDepError "servant-reason"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        };
      };
    }