{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "cabal2nix"; version = "2.11.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons,\nAndres Loeh,\nBenno Fünfstück,\nMateusz Kowalczyk,\nMichael Alan Dorman,\nTom Smalley,\nMathijs Kwik,\nShea Levy,\nDmitry Malikov,\nEric Seidel,\nJacob Mitchell,\nGraham Christensen,\nHamish Mackenzie,\nNikolay Amiantov,\nAycan iRiCAN,\nBryan Gardiner,\nJoe Hermaszewski,\nJohn Wiegley,\nPhilipp Hausmann,\nSpencer Janssen,\nTom Hunger,\nWilliam Casarin,\nkoral,\nksaric,\nAdam Vogt,\nAlexey Shmalko,\nCorey O'Connor,\nCray Elliott,\nDavid Johnson,\nDmitry Bushev,\nDomen Kožar,\nFelix Kunzmann,\nGabriel Ebner,\nGergely Risko,\nJoachim Fasting,\nJohn Albietz,\nJohn Chee,\nJussi Maki,\nLisanna Dettwyler,\nMark Laws,\nMark Wotton,\nMatthew Pickering,\nMatthew Stewart,\nMatvey Aksenov,\nNicholas Clarke,\nNicolas Rolland,\nOliver Charles,\nPascal Wittmann,\nPatrick John Wheeler,\nPhil de Joux,\nPiotr Bogdan,\nProfpatsch,\nRaymond Gauthier,\nRenzo Carbonara,\nRodney Lorrimar,\nSibi,\nSukant Hajra,\nTanner Doshier,\nVaibhav Sagar,\nViktar Basharymau,\ndanbst,\nkarsten gebbert,\nlaMudri,\nАлександр Цамутали";
      homepage = "https://github.com/nixos/cabal2nix#readme";
      url = "";
      synopsis = "Convert Cabal files into Nix build instructions.";
      description = "Convert Cabal files into Nix build instructions. Users of Nix can install the latest\nversion by running:\n\n> nix-env -i cabal2nix";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."distribution-nixpkgs" or (errorHandler.buildDepError "distribution-nixpkgs"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hackage-db" or (errorHandler.buildDepError "hackage-db"))
          (hsPkgs."hopenssl" or (errorHandler.buildDepError "hopenssl"))
          (hsPkgs."hpack" or (errorHandler.buildDepError "hpack"))
          (hsPkgs."language-nix" or (errorHandler.buildDepError "language-nix"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        buildable = true;
      };
      exes = {
        "cabal2nix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabal2nix" or (errorHandler.buildDepError "cabal2nix"))
          ];
          buildable = true;
        };
        "hackage2nix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cabal2nix" or (errorHandler.buildDepError "cabal2nix"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."distribution-nixpkgs" or (errorHandler.buildDepError "distribution-nixpkgs"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hopenssl" or (errorHandler.buildDepError "hopenssl"))
            (hsPkgs."language-nix" or (errorHandler.buildDepError "language-nix"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            (hsPkgs."monad-par-extras" or (errorHandler.buildDepError "monad-par-extras"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
          buildable = true;
        };
      };
      tests = {
        "regression-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cabal2nix" or (errorHandler.buildDepError "cabal2nix"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."language-nix" or (errorHandler.buildDepError "language-nix"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.cabal2nix.components.exes.cabal2nix or (pkgs.buildPackages.cabal2nix or (errorHandler.buildToolDepError "cabal2nix:cabal2nix")))
          ];
          buildable = true;
        };
      };
    };
  }