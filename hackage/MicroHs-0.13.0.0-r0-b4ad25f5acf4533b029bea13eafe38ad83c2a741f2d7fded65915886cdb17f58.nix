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
      identifier = { name = "MicroHs"; version = "0.13.0.0"; };
      license = "Apache-2.0";
      copyright = "2023,2024,2025 Lennart Augustsson";
      maintainer = "lennart@augustsson.net";
      author = "lennart@augustsson.net";
      homepage = "";
      url = "";
      synopsis = "A small compiler for Haskell";
      description = "A compiler for an extended subset of Haskell-2010.\nThe compiler translates to combinators and can compile itself.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mhs" = {
          depends = pkgs.lib.optionals (compiler.isGhc && true) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."ghc-internal" or (errorHandler.buildDepError "ghc-internal"))
          ] ++ pkgs.lib.optional (compiler.isMhs && true) (hsPkgs."base" or (errorHandler.buildDepError "base"));
          buildable = true;
        };
      };
    };
  }