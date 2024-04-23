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
      identifier = { name = "zsdd"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eddiejones2108@gmail.com";
      author = "Eddie Jones";
      homepage = "";
      url = "";
      synopsis = "Zero-Suppressed and Reduced Decision Diagrams";
      description = "This package provides an efficient representation of propositions and families of sets as\ndirected acyclic graphs.\nInternally this is a Free monad with shared subterms.\nAll operations are linear in the size of the diagram, but the size of the\ndiagram is also proportional to the number of operations.\n\nThere are two reduction stratergies 'Simple' and 'ZeroSup'.\nThe former is generic and widely applicable, whereas the latter is specialised to sparse formulas.\nSparse formulas are those with few models or where most atoms are false.\nA typical use cases of this mode is when modelling families of sets.\n\n* Shin-ichi Minato, \\\"/Zero-suppressed BDDs for set manipulation in combinatorial problems/\\\",\nDAC '93: Proceedings of the 30th international Design Automation Conference\n<https://dl.acm.org/doi/10.1145/157485.164890>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
    };
  }