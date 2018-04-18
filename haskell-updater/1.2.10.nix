{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "haskell-updater";
          version = "1.2.10";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Ivan Lazar Miljenovic,\nLennart Kolmodin,\nStephan Friedrichs,\nEmil Karlson";
        maintainer = "haskell@gentoo.org";
        author = "Ivan Lazar Miljenovic,\nLennart Kolmodin,\nStephan Friedrichs,\nEmil Karlson";
        homepage = "http://haskell.org/haskellwiki/Gentoo#haskell-updater";
        url = "";
        synopsis = "Rebuild Haskell dependencies in Gentoo";
        description = "haskell-updater rebuilds Haskell packages on Gentoo\nafter a GHC upgrade or a dependency upgrade.\nhaskell-updater is written so as to use only\nGHC's boot libraries so as to have no external\ndependencies.\nThis version is for: GHC-6.12 + Cabal-1.8,\nGHC-7.0 + Cabal-1.10, GHC-7.2 + Cabal-1.12,\nGHC-7.4 + Cabal-1.14, GHC-7.6 + Cabal-1.16,\nGHC-7.6 + Cabal-1.18, GHC-7.8 + Cabal-1.18,\nGHC-7.10 + Cabal-1.22, GHC-8.0.1_rc1 + Cabal-1.23.0.0";
        buildType = "Simple";
      };
      components = {
        exes = {
          haskell-updater = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.process
            ];
          };
        };
      };
    }