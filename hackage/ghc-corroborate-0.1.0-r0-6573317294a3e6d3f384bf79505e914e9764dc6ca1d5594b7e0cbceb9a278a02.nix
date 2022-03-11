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
      specVersion = "2.0";
      identifier = { name = "ghc-corroborate"; version = "0.1.0"; };
      license = "MPL-2.0";
      copyright = "© 2020-2022 Phil de Joux, © 2020-2022 Block Scope Limited";
      maintainer = "phil.dejoux@blockscope.com";
      author = "Phil de Joux";
      homepage = "https://github.com/blockscope/ghc-corroborate#readme";
      url = "";
      synopsis = "An flatter API for GHC typechecker plugins";
      description = "The GHC API changes over time. This package re-exports most GHC\nimports needed by typechecker plugins from its GHC.Corroborate module\nwith a stable API over multiple GHC versions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-tcplugins-extra" or (errorHandler.buildDepError "ghc-tcplugins-extra"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.2" && (compiler.isGhc && (compiler.version).lt "9.4")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.0" && (compiler.isGhc && (compiler.version).lt "9.2")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.10.0" && (compiler.isGhc && (compiler.version).lt "9.0")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.8.0" && (compiler.isGhc && (compiler.version).lt "8.10.0")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.6.0" && (compiler.isGhc && (compiler.version).lt "8.8.0")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.4.0" && (compiler.isGhc && (compiler.version).lt "8.6.0")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.2.0" && (compiler.isGhc && (compiler.version).lt "8.4.0")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.0.0" && (compiler.isGhc && (compiler.version).lt "8.2.0")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"));
        buildable = true;
        };
      };
    }