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
      identifier = { name = "simple-expr"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Alexey Tochin";
      maintainer = "Alexey.Tochin@gmail.com";
      author = "Alexey Tochin";
      homepage = "";
      url = "";
      synopsis = "Minimalistic toolkit for simple mathematical expression.";
      description = "This is a minimalistic toolkit for simple mathematical expression developed for debug purposes similar to\n'simple-reflect' package\nbut based on slightly different principles.\nIn particular, we use ordinary syntactic trees instead of turning them into strings.\nThere is a primitive manipulation capability like\n\n@\n>>> simplify $ (x + 0) * 1 - x * (3 - 2)\n0\n@\n\nBesides an expression visualization feature is also provided.\n\n![image description](docs/doc/images/imaginary_expr_sum.png)\n\nSee [tutorial](docs/Debug-SimpleExpr-Tutorial.html) for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
          (hsPkgs."graphite" or (errorHandler.buildDepError "graphite"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unicode-show" or (errorHandler.buildDepError "unicode-show"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."graphite" or (errorHandler.buildDepError "graphite"))
            (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
            (hsPkgs."simple-expr" or (errorHandler.buildDepError "simple-expr"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unicode-show" or (errorHandler.buildDepError "unicode-show"))
          ];
          buildable = true;
        };
      };
    };
  }