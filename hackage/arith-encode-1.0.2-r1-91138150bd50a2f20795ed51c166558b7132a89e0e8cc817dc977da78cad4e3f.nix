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
      specVersion = "1.16";
      identifier = { name = "arith-encode"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Eric McCorkle.  All rights reserved.";
      maintainer = "Eric McCorkle <emc2@metricspace.net>, Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      author = "Eric McCorkle";
      homepage = "https://github.com/emc2/arith-encode";
      url = "";
      synopsis = "A practical arithmetic encoding (aka Godel numbering) library.";
      description = "A library providing tools and various schemes for encoding arbitrary datatypes\nas natural numbers.  The underlying theory is that of isomorphisms with the natural\nnumbers (known as Godel numbering).  The library provides functionality for defining\nmultiple such encodings for a given datatype, as well as a collection of stock\nencodings and combinators which can be used to build more complex encodings.\n\nThis has various uses, among them binary serialization/deserialization and\nenumeration testing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."integer-logarithms" or (errorHandler.buildDepError "integer-logarithms"))
          (hsPkgs."integer-roots" or (errorHandler.buildDepError "integer-roots"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "UnitTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."arith-encode" or (errorHandler.buildDepError "arith-encode"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."HUnit-Plus" or (errorHandler.buildDepError "HUnit-Plus"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }