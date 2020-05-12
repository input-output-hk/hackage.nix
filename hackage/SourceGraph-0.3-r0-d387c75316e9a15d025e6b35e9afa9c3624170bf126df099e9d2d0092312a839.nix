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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "SourceGraph"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Use graph-theory to analyse your code";
      description = "SourceGraph uses the Graphalyze library to analyse\nCabalized Haskell code.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "SourceGraph" = {
          depends = [
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."Graphalyze" or (errorHandler.buildDepError "Graphalyze"))
            (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
          };
        };
      };
    }