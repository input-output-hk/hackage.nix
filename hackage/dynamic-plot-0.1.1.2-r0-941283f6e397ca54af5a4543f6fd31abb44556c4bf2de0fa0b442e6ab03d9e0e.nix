{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dynamic-plot"; version = "0.1.1.2"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."MemoTrie" or ((hsPkgs.pkgs-errors).buildDepError "MemoTrie"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."constrained-categories" or ((hsPkgs.pkgs-errors).buildDepError "constrained-categories"))
          (hsPkgs."diagrams-core" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-cairo" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-gtk" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-gtk"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."manifolds" or ((hsPkgs.pkgs-errors).buildDepError "manifolds"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }