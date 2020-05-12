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
      specVersion = "1.9.2";
      identifier = { name = "compdata-automata"; version = "0.9.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "paba@di.ku.dk";
      author = "Patrick Bahr";
      homepage = "";
      url = "";
      synopsis = "Tree automata on Compositional Data Types";
      description = "This library extends the @compdata@ package with advanced recursion\nschemes derived from tree automata. These recursion schemes allow\nfor a higher degree of modularity and make it possible to apply\nfusion. See /Modular Tree Automata/ (Mathematics of Program\nConstruction, 263-299, 2012,\n<http://dx.doi.org/10.1007/978-3-642-31113-0_14>) and\n/Programming Macro Tree Transducers/ (Workshop on Generic Programming, 61-72,\n2013, <http://dx.doi.org/10.1145/2502488.2502489>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."compdata" or (errorHandler.buildDepError "compdata"))
          (hsPkgs."projection" or (errorHandler.buildDepError "projection"))
          ];
        buildable = true;
        };
      benchmarks = {
        "macro" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."compdata" or (errorHandler.buildDepError "compdata"))
            (hsPkgs."projection" or (errorHandler.buildDepError "projection"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }