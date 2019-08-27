let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "dynamic-plot"; version = "0.3.0.0"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."MemoTrie" or (buildDepError "MemoTrie"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."random-fu" or (buildDepError "random-fu"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."constrained-categories" or (buildDepError "constrained-categories"))
          (hsPkgs."free-vector-spaces" or (buildDepError "free-vector-spaces"))
          (hsPkgs."linearmap-category" or (buildDepError "linearmap-category"))
          (hsPkgs."diagrams-core" or (buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-cairo" or (buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-gtk" or (buildDepError "diagrams-gtk"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."glib" or (buildDepError "glib"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."manifolds" or (buildDepError "manifolds"))
          (hsPkgs."manifold-random" or (buildDepError "manifold-random"))
          (hsPkgs."colour-space" or (buildDepError "colour-space"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          (hsPkgs."lens" or (buildDepError "lens"))
          ];
        };
      };
    }