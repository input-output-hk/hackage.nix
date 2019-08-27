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
    flags = { debug = false; eventlog = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "network-anonymous-i2p"; version = "0.9.0"; };
      license = "MIT";
      copyright = "(c) 2014 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "";
      url = "";
      synopsis = "Haskell API for I2P anonymous networking";
      description = "Haskell API for I2P anonymous networking";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-simple" or (buildDepError "network-simple"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."network-attoparsec" or (buildDepError "network-attoparsec"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-simple" or (buildDepError "network-simple"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
            (hsPkgs."hspec-attoparsec" or (buildDepError "hspec-attoparsec"))
            (hsPkgs."network-anonymous-i2p" or (buildDepError "network-anonymous-i2p"))
            ];
          };
        };
      };
    }