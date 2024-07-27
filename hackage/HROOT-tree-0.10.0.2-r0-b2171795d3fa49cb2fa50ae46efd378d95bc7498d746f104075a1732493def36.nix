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
      identifier = { name = "HROOT-tree"; version = "0.10.0.2"; };
      license = "LGPL-2.1-or-later";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "https://wavewave.github.io/HROOT";
      url = "";
      synopsis = "Haskell binding to ROOT Tree modules";
      description = "HROOT is a haskell Foreign Function Interface (FFI) binding to ROOT.\nROOT(http://root.cern.ch) is an object-oriented program and library\ndeveloped by CERN for physics data analysis.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.process or (pkgs.pkgsBuildBuild.process or (errorHandler.setupDepError "process")))
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
        ];
        buildable = true;
      };
    };
  }