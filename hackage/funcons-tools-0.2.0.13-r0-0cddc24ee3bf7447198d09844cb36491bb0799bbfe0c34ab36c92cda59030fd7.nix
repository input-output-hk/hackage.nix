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
      identifier = { name = "funcons-tools"; version = "0.2.0.13"; };
      license = "MIT";
      copyright = "Copyright (C) 2015 L. Thomas van Binsbergen and Neil Sculthorpe";
      maintainer = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>";
      author = "L. Thomas van Binsbergen and Neil Sculthorpe";
      homepage = "http://plancomps.org";
      url = "";
      synopsis = "A modular interpreter for executing funcons";
      description = "The PLanCompS project (<http://plancomps.org>) has developed a component-based approach to formal semantics.\nThe semantics of a language is defined by translating its constructs to combinations\nof `fundamental constructs' called /funcons/.\n\nThis package provides a collection of highly reusable funcons in \"Funcons.Core\",\nan interpreter for these funcons and means for defining new funcons.\n\nThe executable provided by this package is an interpreter for running terms\nconstructed from the collection of funcons provided by \"Funcons.Core\".\nHow this executable is used is explained in \"Funcons.Tools\".\n\nAdditional funcons can be defined with the helper functions provided by\n\"Funcons.EDSL\". The module \"Funcons.Tools\" provides functions for creating\nexecutables by extending the main interpreter with additional funcons.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bv" or (errorHandler.buildDepError "bv"))
          (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."gll" or (errorHandler.buildDepError "gll"))
          (hsPkgs."TypeCompose" or (errorHandler.buildDepError "TypeCompose"))
          (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
          (hsPkgs."random-strings" or (errorHandler.buildDepError "random-strings"))
          (hsPkgs."funcons-values" or (errorHandler.buildDepError "funcons-values"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          ];
        buildable = true;
        };
      exes = {
        "funcons-repl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bv" or (errorHandler.buildDepError "bv"))
            (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."gll" or (errorHandler.buildDepError "gll"))
            (hsPkgs."TypeCompose" or (errorHandler.buildDepError "TypeCompose"))
            (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
            (hsPkgs."random-strings" or (errorHandler.buildDepError "random-strings"))
            (hsPkgs."funcons-values" or (errorHandler.buildDepError "funcons-values"))
            (hsPkgs."exploring-interpreters" or (errorHandler.buildDepError "exploring-interpreters"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }