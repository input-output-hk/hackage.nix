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
      specVersion = "1.24";
      identifier = { name = "cabal2nix"; version = "2.15.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons, Andres Loeh, Benno Fünfstück, Mateusz Kowalczyk,\nMichael Alan Dorman, Tom Smalley, Mathijs Kwik, Shea Levy, Dmitry\nMalikov, Eric Seidel, Jacob Mitchell, Graham Christensen,\nHamish Mackenzie, Nikolay Amiantov, Aycan iRiCAN, Bryan\nGardiner, Joe Hermaszewski, John Wiegley, Philipp Hausmann,\nSpencer Janssen, Tom Hunger, William Casarin, koral,\nksaric, Adam Vogt, Alexey Shmalko, Corey O'Connor, Cray\nElliott, David Johnson, Dmitry Bushev, Domen Kožar, Felix\nKunzmann, Gabriel Ebner, Gergely Risko, Joachim Fasting,\nJohn Albietz, John Chee, Jussi Maki, Lisanna Dettwyler,\nMark Laws, Mark Wotton, Matthew Pickering, Matthew Stewart,\nMatvey Aksenov, Nicholas Clarke, Nicolas Rolland, Oliver\nCharles, Pascal Wittmann, Patrick John Wheeler, Phil de\nJoux, Piotr Bogdan, Profpatsch, Raymond Gauthier, Renzo\nCarbonara, Rodney Lorrimar, Sibi, Sukant Hajra, Tanner\nDoshier, Vaibhav Sagar, Viktar Basharymau, danbst, karsten\ngebbert, laMudri, Александр Цамутали";
      homepage = "https://github.com/nixos/cabal2nix#readme";
      url = "";
      synopsis = "Convert Cabal files into Nix build instructions.";
      description = "Convert Cabal files into Nix build instructions. Users of Nix can install the latest\nversion by running:\n\n> nix-env -i cabal2nix";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."distribution-nixpkgs" or (buildDepError "distribution-nixpkgs"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hackage-db" or (buildDepError "hackage-db"))
          (hsPkgs."hopenssl" or (buildDepError "hopenssl"))
          (hsPkgs."hpack" or (buildDepError "hpack"))
          (hsPkgs."language-nix" or (buildDepError "language-nix"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ];
        };
      exes = {
        "cabal2nix" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cabal2nix" or (buildDepError "cabal2nix"))
            ];
          };
        "hackage2nix" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cabal2nix" or (buildDepError "cabal2nix"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."distribution-nixpkgs" or (buildDepError "distribution-nixpkgs"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hopenssl" or (buildDepError "hopenssl"))
            (hsPkgs."language-nix" or (buildDepError "language-nix"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            (hsPkgs."monad-par-extras" or (buildDepError "monad-par-extras"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          };
        };
      tests = {
        "regression-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."cabal2nix" or (buildDepError "cabal2nix"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."language-nix" or (buildDepError "language-nix"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.cabal2nix or (pkgs.buildPackages.cabal2nix or (buildToolDepError "cabal2nix")))
            ];
          };
        };
      };
    }