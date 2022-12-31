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
      identifier = { name = "HROOT-net"; version = "0.10.0.1"; };
      license = "LGPL-2.1-or-later";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "https://wavewave.github.io/HROOT";
      url = "";
      synopsis = "Haskell binding to ROOT Net modules";
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
          (hsPkgs."fficxx" or (errorHandler.buildDepError "fficxx"))
          (hsPkgs."fficxx-runtime" or (errorHandler.buildDepError "fficxx-runtime"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."stdcxx" or (errorHandler.buildDepError "stdcxx"))
          (hsPkgs."HROOT-core" or (errorHandler.buildDepError "HROOT-core"))
          (hsPkgs."HROOT-io" or (errorHandler.buildDepError "HROOT-io"))
          ];
        libs = [ (pkgs."RHTTP" or (errorHandler.sysDepError "RHTTP")) ];
        buildable = true;
        };
      };
    }