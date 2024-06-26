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
    flags = { tests = false; hpc = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "swish"; version = "0.3.0.0"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2003, 2004 G. Klyne; 2009 Vasili I Galchin; 2011 Doug Burke; All rights reserved.";
      maintainer = "dburke@cfa.harvard.edu";
      author = "Graham Klyne - GK@ninebynine.org";
      homepage = "https://bitbucket.org/doug_burke/swish/wiki/Home";
      url = "";
      synopsis = "A semantic web toolkit. ";
      description = "Swish is a framework, written in the purely functional\nprogramming language Haskell, for performing deductions in\nRDF data using a variety of techniques. Swish is conceived\nas a toolkit for experimenting with RDF inference, and for\nimplementing stand-alone RDF file processors (usable in\nsimilar style to CWM, but with a view to being extensible\nin declarative style through added Haskell function and data\nvalue declarations). It explores Haskell as \\\"a scripting\nlanguage for the Semantic Web\\\".\n\nSwish is a work-in-progress, and currently incorporates:\n\n* Notation3 and NTriples input and output. The N3 support is\nincomplete (no handling of @forAll@).\n\n* RDF graph isomorphism testing and merging.\n\n* Display of differences between RDF graphs.\n\n* Inference operations in forward chaining, backward chaining and proof-checking modes.\n\n* Simple Horn-style rule implementations, extendable through variable binding modifiers and filters.\n\n* Class restriction rule implementation, primarily for datatype inferences.\n\n* RDF formal semantics entailment rule implementation.\n\n* Complete, ready-to-run, command-line and script-driven programs.\n\nMajor Changes:\n\n[Version 0.3.0.0] is an attempt to update\nversion 0.2.1 (<http://hackage.haskell.org/package/swish-0.2.1/>)\nto build against\na recent ghc install, with some clean ups - including support for\nthe current N3 specification - and the addition of the\nNTriples format. It has not been tested against ghc7.\n\nReferences:\n\n- <http://www.ninebynine.org/RDFNotes/Swish/Intro.html>\n\n- <http://www.ninebynine.org/Software/swish-0.2.1.html>\n\n- CWM: <http://www.w3.org/2000/10/swap/doc/cwm.html>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ];
        buildable = true;
      };
      exes = {
        "BuiltInMapTest" = {
          buildable = if !flags.tests then false else true;
        };
        "GraphPartitionTest" = {
          buildable = if !flags.tests then false else true;
        };
        "GraphTest" = { buildable = if !flags.tests then false else true; };
        "NTTest" = { buildable = if !flags.tests then false else true; };
        "N3ParserTest" = { buildable = if !flags.tests then false else true; };
        "N3FormatterTest" = {
          buildable = if !flags.tests then false else true;
        };
        "RDFDatatypeXsdIntegerTest" = {
          buildable = if !flags.tests then false else true;
        };
        "RDFGraphTest" = { buildable = if !flags.tests then false else true; };
        "RDFProofContextTest" = {
          buildable = if !flags.tests then false else true;
        };
        "RDFProofTest" = { buildable = if !flags.tests then false else true; };
        "RDFQueryTest" = { buildable = if !flags.tests then false else true; };
        "RDFRulesetTest" = {
          buildable = if !flags.tests then false else true;
        };
        "VarBindingTest" = {
          buildable = if !flags.tests then false else true;
        };
        "LookupMapTest" = { buildable = if !flags.tests then false else true; };
        "QNameTest" = { buildable = if !flags.tests then false else true; };
        "Swish" = { buildable = true; };
      };
    };
  }