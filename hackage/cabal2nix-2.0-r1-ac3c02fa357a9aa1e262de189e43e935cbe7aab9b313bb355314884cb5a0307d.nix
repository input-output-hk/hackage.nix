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
      specVersion = "1.10";
      identifier = {
        name = "cabal2nix";
        version = "2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons,\nAndres Loeh,\nBenno Fünfstück,\nMateusz Kowalczyk,\nMathijs Kwik,\nMichael Alan Dorman,\nShea Levy,\nDmitry Malikov,\nEric Seidel,\nNikolay Amiantov,\nAycan iRiCAN,\nJohn Wiegley,\nPhilipp Hausmann,\nSpencer Janssen,\nWilliam Casarin,\nAdam Vogt,\nBryan Gardiner,\nCorey O'Connor,\nCray Elliott,\nFelix Kunzmann,\nGabriel Ebner,\nGergely Risko,\nJohn Albietz,\nJohn Chee,\nJussi Maki,\nMark Laws,\nMark Wotton,\nMatvey Aksenov,\nNicolas Rolland,\nOliver Charles,\nPascal Wittmann,\nPatrick John Wheeler,\nRaymond Gauthier,\nRenzo Carbonara,\nSibi,\nTanner Doshier,\nTom Hunger,\nViktar Basharymau,\ndanbst,\nkarsten gebbert,\nlaMudri,\nАлександр Цамутали";
      homepage = "https://github.com/nixos/cabal2nix#readme";
      url = "";
      synopsis = "Convert Cabal files into Nix build instructions.";
      description = "Convert Cabal files into Nix build instructions. Users of Nix can install the latest version by running:\n\n> nix-env -i cabal2nix";
      buildType = "Simple";
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
          (hsPkgs.language-nix)
          (hsPkgs.lens)
          (hsPkgs.optparse-applicative)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.SHA)
          (hsPkgs.split)
          (hsPkgs.text)
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
            (hsPkgs.language-nix)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.SHA)
            (hsPkgs.split)
            (hsPkgs.text)
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
            (hsPkgs.language-nix)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.SHA)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.yaml)
            (hsPkgs.cabal2nix)
            (hsPkgs.monad-par)
            (hsPkgs.monad-par-extras)
            (hsPkgs.mtl)
            (hsPkgs.stackage-types)
            (hsPkgs.time)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }