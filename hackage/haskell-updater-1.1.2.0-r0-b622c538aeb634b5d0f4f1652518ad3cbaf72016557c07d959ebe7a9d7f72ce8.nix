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
      specVersion = "1.6";
      identifier = {
        name = "haskell-updater";
        version = "1.1.2.0";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Ivan Lazar Miljenovic,\nLennart Kolmodin,\nStephan Friedrichs,\nEmil Karlson";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic,\nLennart Kolmodin,\nStephan Friedrichs,\nEmil Karlson";
      homepage = "http://haskell.org/haskellwiki/Gentoo#haskell-updater";
      url = "";
      synopsis = "Rebuild Haskell dependencies in Gentoo";
      description = "haskell-updater rebuilds Haskell packages on Gentoo\nafter a GHC upgrade or a dependency upgrade.\nhaskell-updater is written so as to use only\nGHC's boot libraries so as to have no external\ndependencies.\nThis version is for GHC-6.12 with Cabal-1.8.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "haskell-updater" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.process)
          ];
        };
      };
    };
  }