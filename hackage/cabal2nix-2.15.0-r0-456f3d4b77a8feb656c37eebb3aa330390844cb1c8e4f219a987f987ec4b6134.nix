{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."distribution-nixpkgs" or ((hsPkgs.pkgs-errors).buildDepError "distribution-nixpkgs"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hackage-db" or ((hsPkgs.pkgs-errors).buildDepError "hackage-db"))
          (hsPkgs."hopenssl" or ((hsPkgs.pkgs-errors).buildDepError "hopenssl"))
          (hsPkgs."hpack" or ((hsPkgs.pkgs-errors).buildDepError "hpack"))
          (hsPkgs."language-nix" or ((hsPkgs.pkgs-errors).buildDepError "language-nix"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "cabal2nix" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cabal2nix" or ((hsPkgs.pkgs-errors).buildDepError "cabal2nix"))
            ];
          buildable = true;
          };
        "hackage2nix" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cabal2nix" or ((hsPkgs.pkgs-errors).buildDepError "cabal2nix"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."distribution-nixpkgs" or ((hsPkgs.pkgs-errors).buildDepError "distribution-nixpkgs"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hopenssl" or ((hsPkgs.pkgs-errors).buildDepError "hopenssl"))
            (hsPkgs."language-nix" or ((hsPkgs.pkgs-errors).buildDepError "language-nix"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."monad-par" or ((hsPkgs.pkgs-errors).buildDepError "monad-par"))
            (hsPkgs."monad-par-extras" or ((hsPkgs.pkgs-errors).buildDepError "monad-par-extras"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      tests = {
        "regression-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."cabal2nix" or ((hsPkgs.pkgs-errors).buildDepError "cabal2nix"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."language-nix" or ((hsPkgs.pkgs-errors).buildDepError "language-nix"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-golden" or ((hsPkgs.pkgs-errors).buildDepError "tasty-golden"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.cabal2nix or (pkgs.buildPackages.cabal2nix or ((hsPkgs.pkgs-errors).buildToolDepError "cabal2nix")))
            ];
          buildable = true;
          };
        };
      };
    }