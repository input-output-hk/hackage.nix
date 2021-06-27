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
      specVersion = "2.4";
      identifier = { name = "lion"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021 David Cox";
      maintainer = "dopamane <standard.semiconductor@gmail.com>";
      author = "dopamane <standard.semiconductor@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "RISC-V Core";
      description = "Lion is a formally verified, 5-stage pipeline [RISC-V](https://riscv.org) core. Lion targets the [VELDT FPGA development board](https://standardsemiconductor.com) and is written in Haskell using [Clash](https://clash-lang.org).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generic-monoid" or (errorHandler.buildDepError "generic-monoid"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."ice40-prim" or (errorHandler.buildDepError "ice40-prim"))
          (hsPkgs."clash-prelude" or (errorHandler.buildDepError "clash-prelude"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."ghc-typelits-extra" or (errorHandler.buildDepError "ghc-typelits-extra"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          ];
        buildable = true;
        };
      };
    }