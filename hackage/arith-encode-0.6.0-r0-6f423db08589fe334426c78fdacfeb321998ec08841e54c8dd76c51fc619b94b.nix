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
      specVersion = "1.12";
      identifier = { name = "arith-encode"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Eric McCorkle.  All rights reserved.";
      maintainer = "Eric McCorkle <emc2@metricspace.net>";
      author = "Eric McCorkle";
      homepage = "https://github.com/emc2/arith-encode";
      url = "";
      synopsis = "A practical arithmetic encoding (aka Godel numbering) library.";
      description = "A library providing tools and various schemes for encoding arbitrary datatypes\nas natural numbers.  The underlying theory is that of isomorphisms with the natural\nnumbers (known as Godel numbering).  The library provides functionality for defining\nmultiple such encodings for a given datatype, as well as a collection of stock\nencodings and combinators which can be used to build more complex encodings.\n\nThis has various uses, among them binary serialization/deserialization and\nenumeration testing.\n\nThis is the first release candidate for 1.0 (the initial release).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          ];
        buildable = true;
        };
      tests = {
        "UnitTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."HUnit-Plus" or (errorHandler.buildDepError "HUnit-Plus"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
            ];
          buildable = true;
          };
        };
      };
    }