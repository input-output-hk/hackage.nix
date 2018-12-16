{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = {
        name = "cabal2nix";
        version = "2.11";
      };
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
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.aeson)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.distribution-nixpkgs)
          (hsPkgs.filepath)
          (hsPkgs.hackage-db)
          (hsPkgs.hopenssl)
          (hsPkgs.hpack)
          (hsPkgs.language-nix)
          (hsPkgs.lens)
          (hsPkgs.optparse-applicative)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "cabal2nix" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cabal2nix)
          ];
        };
        "hackage2nix" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.cabal2nix)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.distribution-nixpkgs)
            (hsPkgs.filepath)
            (hsPkgs.hopenssl)
            (hsPkgs.language-nix)
            (hsPkgs.lens)
            (hsPkgs.monad-par)
            (hsPkgs.monad-par-extras)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty)
          ];
        };
      };
      tests = {
        "regression-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.cabal2nix)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.language-nix)
            (hsPkgs.lens)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
          ];
        };
      };
    };
  }