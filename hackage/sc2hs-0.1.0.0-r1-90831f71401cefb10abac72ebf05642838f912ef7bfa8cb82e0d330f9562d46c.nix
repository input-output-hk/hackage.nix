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
      identifier = { name = "sc2hs"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Sophie Taylor <sophie@spacekitteh.moe>";
      author = "Sophie Taylor <sophie@spacekitteh.moe>";
      homepage = "https://gitlab.com/spacekitteh/sc2hs";
      url = "";
      synopsis = "An interface to the Starcraft II bot API";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."etc" or (buildDepError "etc"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."freer-simple" or (buildDepError "freer-simple"))
          (hsPkgs."gitrev" or (buildDepError "gitrev"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lens-labels" or (buildDepError "lens-labels"))
          (hsPkgs."proto-lens" or (buildDepError "proto-lens"))
          (hsPkgs."sc2-lowlevel" or (buildDepError "sc2-lowlevel"))
          (hsPkgs."sc2-proto" or (buildDepError "sc2-proto"))
          (hsPkgs."sc2-support" or (buildDepError "sc2-support"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      exes = {
        "sc2hs-demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."etc" or (buildDepError "etc"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."freer-simple" or (buildDepError "freer-simple"))
            (hsPkgs."gitrev" or (buildDepError "gitrev"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."lens-labels" or (buildDepError "lens-labels"))
            (hsPkgs."proto-lens" or (buildDepError "proto-lens"))
            (hsPkgs."sc2-lowlevel" or (buildDepError "sc2-lowlevel"))
            (hsPkgs."sc2-proto" or (buildDepError "sc2-proto"))
            (hsPkgs."sc2-support" or (buildDepError "sc2-support"))
            (hsPkgs."sc2hs" or (buildDepError "sc2hs"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }