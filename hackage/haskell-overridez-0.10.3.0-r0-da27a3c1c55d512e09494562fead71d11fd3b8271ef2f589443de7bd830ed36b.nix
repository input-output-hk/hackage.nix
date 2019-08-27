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
      specVersion = "2.0";
      identifier = { name = "haskell-overridez"; version = "0.10.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tim.emiola@gmail.com";
      author = "Tim Emiola";
      homepage = "https://github.com/adetokunbo/haskell-overridez";
      url = "";
      synopsis = "Manage nix overrides for haskell packages";
      description = "A tool to simplify the use of nix overrides during haskell development";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskell-overridez" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-casing" or (buildDepError "aeson-casing"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."managed" or (buildDepError "managed"))
            (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."turtle" or (buildDepError "turtle"))
            ];
          };
        };
      };
    }