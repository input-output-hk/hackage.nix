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
      specVersion = "3.0";
      identifier = { name = "HROOT"; version = "0.10.0.3"; };
      license = "LGPL-2.1-or-later";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "https://wavewave.github.io/HROOT";
      url = "";
      synopsis = "Haskell binding to the ROOT data analysis framework";
      description = "HROOT is a haskell Foreign Function Interface (FFI) binding to ROOT.\nROOT(http://root.cern.ch) is an object-oriented program and library\ndeveloped by CERN for physics data analysis.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (errorHandler.setupDepError "process")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HROOT-core" or (errorHandler.buildDepError "HROOT-core"))
          (hsPkgs."HROOT-graf" or (errorHandler.buildDepError "HROOT-graf"))
          (hsPkgs."HROOT-hist" or (errorHandler.buildDepError "HROOT-hist"))
          (hsPkgs."HROOT-io" or (errorHandler.buildDepError "HROOT-io"))
          (hsPkgs."HROOT-math" or (errorHandler.buildDepError "HROOT-math"))
          (hsPkgs."HROOT-net" or (errorHandler.buildDepError "HROOT-net"))
          (hsPkgs."HROOT-tree" or (errorHandler.buildDepError "HROOT-tree"))
          ];
        buildable = true;
        };
      };
    }