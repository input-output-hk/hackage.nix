{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tree-view";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Emil Axelsson";
      maintainer = "emax@chalmers.se";
      author = "Emil Axelsson";
      homepage = "";
      url = "";
      synopsis = "Render trees as foldable HTML and Unicode art";
      description = "Render trees as foldable HTML and Unicode art\n\nExample:\n\n> *Data.Tree.View> drawTree \$ Node \"Add\" [Node \"Sub\" [Node \"3\" [], Node \"Mul\" [Node \"1\" [], Node \"2\" []]], Node \"4\" []]\n> Add\n>  ├╴Sub\n>  │  ├╴3\n>  │  └╴Mul\n>  │     ├╴1\n>  │     └╴2\n>  └╴4";
      buildType = "Simple";
    };
    components = {
      "tree-view" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
    };
  }