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
      identifier = { name = "fmlist"; version = "0.9.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjoerd@w3future.com";
      author = "Sjoerd Visscher";
      homepage = "https://github.com/sjoerdvisscher/fmlist";
      url = "";
      synopsis = "FoldMap lists";
      description = "FoldMap lists are lists represented by their foldMap function.\nFoldMap lists have O(1) cons, snoc and append, just like DLists,\nbut other operations might have favorable performance\ncharacteristics as well. These wild claims are still completely\nunverified though.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }