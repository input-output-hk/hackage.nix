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
    flags = { deverror = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "ghc-tcplugins-extra"; version = "0.4.3"; };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2015-2016, University of Twente,\n2017-2018, QBayLogic";
      maintainer = "christiaan.baaij@gmail.com";
      author = "Christiaan Baaij";
      homepage = "https://github.com/clash-lang/ghc-tcplugins-extra#readme";
      url = "";
      synopsis = "Utilities for writing GHC type-checker plugins";
      description = "Utilities for writing GHC type-checker plugins, such as\ncreating constraints, with a stable API covering multiple\nGHC releases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((((((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.4" && (compiler.isGhc && (compiler.version).lt "9.6")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.2" && (compiler.isGhc && (compiler.version).lt "9.4")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.0" && (compiler.isGhc && (compiler.version).lt "9.2")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.10" && (compiler.isGhc && (compiler.version).lt "9.0")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.8" && (compiler.isGhc && (compiler.version).lt "8.10")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.6" && (compiler.isGhc && (compiler.version).lt "8.8")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.4" && (compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.2" && (compiler.isGhc && (compiler.version).lt "8.4")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.0" && (compiler.isGhc && (compiler.version).lt "8.2")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.10" && (compiler.isGhc && (compiler.version).lt "8.0")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"));
        buildable = true;
        };
      };
    }