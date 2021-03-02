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
      identifier = { name = "list-grouping"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Brandon Simmons <brandon.m.simmons@gmail.com>";
      maintainer = "Brandon Simmons <brandon.m.simmons@gmail.com>";
      author = "Brandon Simmons";
      homepage = "http://coder.bsimmons.name/blog/2009/08/list-grouping-module-released/";
      url = "";
      synopsis = "Functions for grouping a list into sublists  ";
      description = "Functions for grouping a list into sublists based on predicate or integer offsets.\n\nNOTE: THIS MODULE IS DEPRECATED. PLEASE TRY THE 'split' PACKAGE INSTEAD\nhttp://hackage.haskell.org/package/split-0.1.3\n\nGrouping a list based on integer offsets:\n\n> splitEvery 3 [1..10]  ==  [[1,2,3],[4,5,6],[7,8,9],[10]]\n> splitWith [1,3,1,3] [1..10]  ==  [[1],[2,3,4],[5],[6,7,8],[9,10]]\n> splitWithDrop [1,3,1,3] [1..10]  ==  [[1],[2,3,4],[5],[6,7,8]]\n\nGrouping based on a predicate:\n\n> breakBefore odd [2..9]  ==  [[2],[3,4],[5,6],[7,8],[9]]\n> breakAfter odd [2..9]  ==  [[2,3],[4,5],[6,7],[8,9]]\n> breakDrop odd [0,0,0,1,0,1,1,0,0]  ==  [[0,0,0],[0],[0,0]]\n\nPlease send me any comments, requests or bug reports\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }