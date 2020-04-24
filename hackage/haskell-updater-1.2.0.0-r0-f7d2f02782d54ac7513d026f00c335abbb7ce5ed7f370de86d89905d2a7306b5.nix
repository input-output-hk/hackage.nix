{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "haskell-updater"; version = "1.2.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Ivan Lazar Miljenovic,\nLennart Kolmodin,\nStephan Friedrichs,\nEmil Karlson";
      maintainer = "haskell@gentoo.org";
      author = "Ivan Lazar Miljenovic,\nLennart Kolmodin,\nStephan Friedrichs,\nEmil Karlson";
      homepage = "http://haskell.org/haskellwiki/Gentoo#haskell-updater";
      url = "";
      synopsis = "Rebuild Haskell dependencies in Gentoo";
      description = "haskell-updater rebuilds Haskell packages on Gentoo\nafter a GHC upgrade or a dependency upgrade.\nhaskell-updater is written so as to use only\nGHC's boot libraries so as to have no external\ndependencies.\nThis version is for GHC-6.12 with Cabal-1.8 and\nGHC-7.0 with Cabal-1.0.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskell-updater" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }