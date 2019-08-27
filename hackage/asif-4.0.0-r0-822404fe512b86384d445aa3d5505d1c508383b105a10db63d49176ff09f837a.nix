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
      identifier = { name = "asif"; version = "4.0.0"; };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/packetloop/asif#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/packetloop/asif#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cpu" or (buildDepError "cpu"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
          (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
          (hsPkgs."hw-ip" or (buildDepError "hw-ip"))
          (hsPkgs."iproute" or (buildDepError "iproute"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."temporary-resourcet" or (buildDepError "temporary-resourcet"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."thyme" or (buildDepError "thyme"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "asif" = {
          depends = [
            (hsPkgs."asif" or (buildDepError "asif"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cpu" or (buildDepError "cpu"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
            (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
            (hsPkgs."hw-ip" or (buildDepError "hw-ip"))
            (hsPkgs."iproute" or (buildDepError "iproute"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."temporary-resourcet" or (buildDepError "temporary-resourcet"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."thyme" or (buildDepError "thyme"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      tests = {
        "asif-test" = {
          depends = [
            (hsPkgs."asif" or (buildDepError "asif"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cpu" or (buildDepError "cpu"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
            (hsPkgs."hw-hspec-hedgehog" or (buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."hw-ip" or (buildDepError "hw-ip"))
            (hsPkgs."iproute" or (buildDepError "iproute"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."temporary-resourcet" or (buildDepError "temporary-resourcet"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."thyme" or (buildDepError "thyme"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }