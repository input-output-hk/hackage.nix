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
    flags = { split-base = true; };
    package = {
      specVersion = "1.4";
      identifier = { name = "soyuz"; version = "0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Alex Kropivny <alex.kropivny@gmail.com>";
      author = "Alex Kropivny <alex.kropivny@gmail.com>";
      homepage = "https://github.com/amtal/0x10c";
      url = "";
      synopsis = "DCPU-16 architecture utilities for Notch's 0x10c game.";
      description = "Utilities for the DCPU-16 architecture, for Notch's upcoming space game, 0x10c.\n\nMeant to be a library for implementing powerful tools. As demonstrations, contains\na command-line optimizing assembler\\/disassembler\\/pretty printer.\n\nCore of the library is \"DCPU16.Instructions\". Everything else is built around it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ];
        buildable = true;
        };
      exes = { "soyuz" = { buildable = true; }; };
      };
    }