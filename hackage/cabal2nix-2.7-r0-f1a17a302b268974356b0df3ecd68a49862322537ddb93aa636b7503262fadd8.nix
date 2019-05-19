{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cabal2nix"; version = "2.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons,\nAndres Loeh,\nBenno Fünfstück,\nMateusz Kowalczyk,\nMichael Alan Dorman,\nMathijs Kwik,\nShea Levy,\nDmitry Malikov,\nEric Seidel,\nHamish Mackenzie,\nNikolay Amiantov,\nAycan iRiCAN,\nBryan Gardiner,\nJoe Hermaszewski,\nJohn Wiegley,\nPhilipp Hausmann,\nSpencer Janssen,\nTom Hunger,\nWilliam Casarin,\nkoral,\nAdam Vogt,\nAlexey Shmalko,\nCorey O'Connor,\nCray Elliott,\nFelix Kunzmann,\nGabriel Ebner,\nGergely Risko,\nJacob Mitchell,\nJoachim Fasting,\nJohn Albietz,\nJohn Chee,\nJussi Maki,\nMark Laws,\nMark Wotton,\nMatthew Stewart,\nMatvey Aksenov,\nNicolas Rolland,\nOliver Charles,\nPascal Wittmann,\nPatrick John Wheeler,\nProfpatsch,\nRaymond Gauthier,\nRenzo Carbonara,\nRodney Lorrimar,\nSibi,\nTanner Doshier,\nViktar Basharymau,\ndanbst,\nkarsten gebbert,\nlaMudri,\nАлександр Цамутали";
      homepage = "https://github.com/nixos/cabal2nix#readme";
      url = "";
      synopsis = "Convert Cabal files into Nix build instructions.";
      description = "Convert Cabal files into Nix build instructions. Users of Nix can install the latest version by running:\n\n> nix-env -i cabal2nix";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
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
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
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
            (hsPkgs.cabal2nix)
            ];
          };
        "hackage2nix" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
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
            (hsPkgs.cabal2nix)
            (hsPkgs.monad-par)
            (hsPkgs.monad-par-extras)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.utf8-string)
            ];
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
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
            (hsPkgs.doctest)
            ];
          };
        };
      };
    }