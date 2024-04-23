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
      specVersion = "1.2";
      identifier = { name = "clash"; version = "0.1.3.11"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009-2010 Christiaan Baaij &\nMatthijs Kooijman";
      maintainer = "christiaan.baaij@gmail.com & matthijs@stdin.nl";
      author = "Christiaan Baaij & Matthijs Kooijman";
      homepage = "http://clash.ewi.utwente.nl/";
      url = "http://github.com/christiaanb/clash/tree/master/clash";
      synopsis = "CAES Language for Synchronous Hardware (CLaSH)";
      description = "CLaSH is a tool-chain/language to translate subsets of\nHaskell to synthesizable VHDL. It does this by translating\nthe intermediate System Fc (GHC Core) representation to a\nVHDL AST, which is then written to file.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."vhdl" or (errorHandler.buildDepError "vhdl"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."data-accessor-template" or (errorHandler.buildDepError "data-accessor-template"))
          (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
        ];
        buildable = true;
      };
    };
  }