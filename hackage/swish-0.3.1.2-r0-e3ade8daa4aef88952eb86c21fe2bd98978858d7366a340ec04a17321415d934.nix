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
    flags = { developer = false; tests = false; hpc = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "swish"; version = "0.3.1.2"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2003, 2004 G. Klyne; 2009 Vasili I Galchin; 2011 Doug Burke; All rights reserved.";
      maintainer = "dburke@cfa.harvard.edu";
      author = "Graham Klyne - GK@ninebynine.org";
      homepage = "https://bitbucket.org/doug_burke/swish/wiki/Home";
      url = "";
      synopsis = "A semantic web toolkit. ";
      description = "Swish is a framework, written in the purely functional\nprogramming language Haskell, for performing deductions in\nRDF data using a variety of techniques. Swish is conceived\nas a toolkit for experimenting with RDF inference, and for\nimplementing stand-alone RDF file processors (usable in\nsimilar style to CWM, but with a view to being extensible\nin declarative style through added Haskell function and data\nvalue declarations). It explores Haskell as \\\"a scripting\nlanguage for the Semantic Web\\\".\n\nSwish is a work-in-progress, and currently incorporates:\n\n* Notation3 and NTriples input and output. The N3 support is\nincomplete (no handling of @\\@forAll@).\n\n* RDF graph isomorphism testing and merging.\n\n* Display of differences between RDF graphs.\n\n* Inference operations in forward chaining, backward chaining and proof-checking modes.\n\n* Simple Horn-style rule implementations, extendable through variable binding modifiers and filters.\n\n* Class restriction rule implementation, primarily for datatype inferences.\n\n* RDF formal semantics entailment rule implementation.\n\n* Complete, ready-to-run, command-line and script-driven programs.\n\nMajor Changes:\n\n[Version 0.3.1.2] 'Swish.RDF.RDFGraph.toRDFGraph' now sets up the\nnamespace map of the graph based on the input labels (previously it\nleft the map empty).\n\n[Version 0.3.1.1] Bug fixes for N3 format: strings ending in a\ndouble quote character are now written out correctly and\n@xsd:double@ values are not written using XSD canonical form/capital\n@E@ but with a lower-case @e@. On input of N3,\nliterals that match @xsd:double@ are converted to XSD canonical form\n(as stored in 'RDFLabel'), which can make simple textual comparison\nof literals fail. The 'Eq' instance of 'RDFLabel' now ignores the\ncase of the language tag for literals and the 'Show' instance\nuses XSD canonical form for @xsd:boolean@, @xsd:integer@,\n@xsd:decimal@ and @xsd:double@ literals.\nNoted that the 'ToRDFLable' and 'FromRDFLabel' classes replicate\nexisting functionality in the \"Swish.RDF.RDFDatatype\" module.\n\n[Version 0.3.1.0] Added the `Swish.RDF.RDFGraph.ToRDFLabel` and\n`Swish.RDF.RDFGraph.FromRDFLabel` classes and the\n`Swish.RDF.RDFGraph.toRDFTriple` and `Swish.RDF.RDFGraph.fromRDFTriple`\nfunctions.\nAdded instances: @IsString RDFLabel@, @IsString QName@, @IsString ScopedName@\nand @Monoid NSGraph@.\nThe modules \"Swish\" and \"Swish.RDF\" have been introduced to provide\ndocumentation. The module \"Swish.Utils.DateTime\" is deprecated and\nwill be removed in a later release.\nThe N3 formatter now writes out literals with @xsd:boolean@, @xsd:integer@,\n@xsd:decimal@ and @xsd:double@ types as literals rather than as a typed string.\n\n[Version 0.3.0.3] Changed @scripts/SwishExample.ss@ script so that the\nproof succeeds. Some documentation improvements, including a discussion\nof the Swish script format (see \"Swish.RDF.SwishScript\"). Very minor\nchanges to behavior of Swish in several edge cases.\n\n[Version 0.3.0.2] Bugfix: stop losing triples with a bnode subject when\nusing the N3Formatter; this also makes the @scripts/SwishTest.ss@ test\npass again. Several commands in Swish scripts now create screen\noutput (mainly to check what it is doing). Added the @developer@\nflag for building.\n\n[Version 0.3.0.1] updates the Swish script parser to work with the\nchanges in 0.3.0.0 (reported by Rick Murphy).\nSeveral example scripts are installed in the\n@scripts/@ directory, although only @VehicleCapacity.ss@ works\nwith this release.\n\n[Version 0.3.0.0] is an attempt to update\nversion 0.2.1 (<http://hackage.haskell.org/package/swish-0.2.1/>)\nto build against\na recent ghc install, with some clean ups - including support for\nthe current N3 specification - and the addition of the\nNTriples format. It has not been tested against ghc7.\n\nReferences:\n\n- <http://www.ninebynine.org/RDFNotes/Swish/Intro.html>\n\n- <http://www.ninebynine.org/Software/swish-0.2.1.html>\n\n- CWM: <http://www.w3.org/2000/10/swap/doc/cwm.html>\n";
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
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
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