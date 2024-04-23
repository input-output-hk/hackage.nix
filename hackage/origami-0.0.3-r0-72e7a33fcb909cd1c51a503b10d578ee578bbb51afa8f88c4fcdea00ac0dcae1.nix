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
      identifier = { name = "origami"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Eric Nedervold";
      maintainer = "Eric Nedervold<nedervoldsoftware@gmail.com>";
      author = "Eric Nedervold<nedervoldsoftware@gmail.com>";
      homepage = "http://github.com/nedervold/origami";
      url = "";
      synopsis = "An un-SYB framework for transforming heterogenous\ndata through folds";
      description = "The Origami package consists of a coding pattern for transforming\nheterogenously typed data and Template Haskell macros to support\nthe pattern.  It operates in the same problem space as SYB, but\ngenerates the boilerplate for the user.\n\nIn the pattern, we focus on a specific set of types, the /fold/\n/family/.  For each constructor of each of those types, the user\nwill define a function to \"replace\" the constructor when folding.\n\nThese functions are collected together into a single record.  (Its\ndeclaration is generated for the user.)  Collecting the functions\ntogether forces the typing of all the functions to remain\nconsistent and facilitates code reuse.\n\nFor each datatype, a fold function is automatically generated that\napplies the fold record to values of that datatype.  It decomposes\nthe value into parts according to its constructor, recursively\napplies the fold to the parts, then puts them back together using\nthe replacement constructor function from the record.\n\nAs with SYB, Origami lets the user think on a higher-level of\nabstraction about data transformation and relieves her from the\nneed to write boilerplate.\n\nSee the website for more information and examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."origami" or (errorHandler.buildDepError "origami"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }