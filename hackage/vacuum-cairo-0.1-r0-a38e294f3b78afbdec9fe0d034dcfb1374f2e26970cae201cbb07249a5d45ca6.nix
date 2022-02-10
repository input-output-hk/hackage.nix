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
      identifier = { name = "vacuum-cairo"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Don Stewart 2009";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/vacuum-cairo";
      url = "";
      synopsis = "Visualize live Haskell data structures using vacuum, graphviz and cairo";
      description = "Visualize live Haskell data structures using vacuum, graphviz and cairo\n\n> $ view \"hello\"\n\n<http://code.haskell.org/~dons/images/vacuum/hello.png>\n\n> $ view [1..5]\n\n<http://code.haskell.org/~dons/images/vacuum/list.png>\n\n> $ view (IntMap.fromList $ zip [1..10] [1..])\n\n<http://code.haskell.org/~dons/images/vacuum/intmap.png>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vacuum" or (errorHandler.buildDepError "vacuum"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."svgcairo" or (errorHandler.buildDepError "svgcairo"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }