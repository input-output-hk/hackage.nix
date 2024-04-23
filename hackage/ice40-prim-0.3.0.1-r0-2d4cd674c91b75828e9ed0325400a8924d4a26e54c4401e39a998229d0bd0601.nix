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
      specVersion = "1.10";
      identifier = { name = "ice40-prim"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2020-2021 David Cox";
      maintainer = "dopamane <standard.semiconductor@gmail.com>";
      author = "dopamane";
      homepage = "";
      url = "";
      synopsis = "Lattice iCE40 Primitive IP";
      description = "Clash primitives to instantiate Lattice Semiconductor's iCE40 FPGA hard IP";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."interpolate" or (errorHandler.buildDepError "interpolate"))
          (hsPkgs."clash-prelude" or (errorHandler.buildDepError "clash-prelude"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."ghc-typelits-extra" or (errorHandler.buildDepError "ghc-typelits-extra"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
        ];
        buildable = true;
      };
    };
  }