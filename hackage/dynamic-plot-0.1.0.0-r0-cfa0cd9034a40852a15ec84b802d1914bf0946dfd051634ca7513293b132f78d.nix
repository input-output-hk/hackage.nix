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
      identifier = { name = "dynamic-plot"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) sagemuej \$ smail.uni-koeln.de";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/dynamic-plot";
      url = "";
      synopsis = "Interactive diagram windows";
      description = "Haskell excels at handling data like continuous functions\nin a nice way, i.e. without discretising anything to finite arrays as\nis typically done in languages like Matlab. Instead, you can simply pass\naround functions or infinite data structures (or /very/ high-resolution data\nthat would be infeasible to handle in a strict language).\n\nHowever when you want to /view/ the data, it will eventually need to be exported out of Haskell\nin some finite form. The purpose of this library is to delay this discretisation\nas long as possible: it implements an interactive plotting window that accepts continuous/recursive\ndata and only &#x201c;flattens&#x201d; it according to the specific view configuration.\nYou can then zoom in to a shown diagram and it will automatically calculate\nthe features more detailedly, or zoom out and discover previosly unexpected\nfeatures. You don't need to worry about specifying the range and/or resolution beforehand:\nthe program will try to find a suitable default view based on /all/ data your displaying,\nand you can always still zoom, resize or move later.\n\n<http://projects.haskell.org/diagrams> are used as the &#x201c;pre-rendered&#x201d; type. This\nmakes the output usable in a very wide range of applications, though at the moment only the GTK\nwindow view is implemented.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."constrained-categories" or (errorHandler.buildDepError "constrained-categories"))
          (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-gtk" or (errorHandler.buildDepError "diagrams-gtk"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."manifolds" or (errorHandler.buildDepError "manifolds"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }