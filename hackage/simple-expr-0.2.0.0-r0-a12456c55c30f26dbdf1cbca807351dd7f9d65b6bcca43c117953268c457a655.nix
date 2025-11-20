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
      specVersion = "1.18";
      identifier = { name = "simple-expr"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2024 Alexey Tochin";
      maintainer = "Alexey.Tochin@gmail.com";
      author = "Alexey Tochin";
      homepage = "";
      url = "";
      synopsis = "Minimalistic toolkit for simple mathematical expression.";
      description = "This is a minimalistic toolkit for simple mathematical expression developed for debug purposes similar to [simple-reflect](https://hackage.haskell.org/package/simple-reflect) package but based on slightly different principles. In particular, we use ordinary syntactic trees instead of turning them into strings.\n\nThere is a primitive manipulation capability like\n\n@\n>>> simplify $ (x + 0) * 1 - x * (3 - 2)\n0\n@\n\nBesides an expression visualization feature is also provided.\n\n![image description](docs/doc/images/imaginary_expr_sum.png)\n\nSee [tutorial](docs/Debug-SimpleExpr-Tutorial.html) for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Stream" or (errorHandler.buildDepError "Stream"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."combinatorial" or (errorHandler.buildDepError "combinatorial"))
          (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
          (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
          (hsPkgs."graphite" or (errorHandler.buildDepError "graphite"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unicode-show" or (errorHandler.buildDepError "unicode-show"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."Stream" or (errorHandler.buildDepError "Stream"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."combinatorial" or (errorHandler.buildDepError "combinatorial"))
            (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
            (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."graphite" or (errorHandler.buildDepError "graphite"))
            (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unicode-show" or (errorHandler.buildDepError "unicode-show"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          ];
          buildable = true;
        };
      };
    };
  }