{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "swish";
        version = "0.7.0.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2003, 2004 G. Klyne; 2009 Vasili I Galchin; 2011, 2012 Doug Burke; All rights reserved.";
      maintainer = "dburke@cfa.harvard.edu";
      author = "Graham Klyne - GK@ninebynine.org";
      homepage = "https://bitbucket.org/doug_burke/swish/wiki/Home";
      url = "";
      synopsis = "A semantic web toolkit.";
      description = "Swish is a framework, written in the purely functional\nprogramming language Haskell, for performing deductions in\nRDF data using a variety of techniques. Swish is conceived\nas a toolkit for experimenting with RDF inference, and for\nimplementing stand-alone RDF file processors (usable in\nsimilar style to CWM, but with a view to being extensible\nin declarative style through added Haskell function and data\nvalue declarations). It explores Haskell as \\\"a scripting\nlanguage for the Semantic Web\\\".\n\nSwish is a work-in-progress, and currently incorporates:\n\n* Turtle, Notation3 and NTriples input and output. The N3 support is\nincomplete (no handling of @\\@forAll@).\n\n* RDF graph isomorphism testing and merging.\n\n* Display of differences between RDF graphs.\n\n* Inference operations in forward chaining, backward chaining and proof-checking modes.\n\n* Simple Horn-style rule implementations, extendable through variable binding modifiers and filters.\n\n* Class restriction rule implementation, primarily for datatype inferences.\n\n* RDF formal semantics entailment rule implementation.\n\n* Complete, ready-to-run, command-line and script-driven programs.\n\nChanges in version @0.7.0.2@:\n\n* The @Swish.QName.LName@ type now requires all characters to be\nASCII. This avoids downstream errors when trying to convert a\n@QName@ to a @URI@.\n\nChanges in version @0.7.0.1@:\n\n* Internal changes to parsing of URI values for NTriples, Turtle, and N3\nparsers (error messages will be slightly different when IRIs are used).\nUnfortunately IRIs are still not supported.\n\nChanges in version @0.7.0.0@:\n\nFor code that uses the Swish script language, the main change is to import @Swish@ rather\nthan @Swish.RDF.SwishMain@, and to note that the other @Swish.RDF.Swish*@ modules are\nnow called @Swish.*@.\n\nFor code that uses the graph library, the main changes are that @Swish.RDF.RDFGraph@\nis now called @Swish.RDF.Graph@, the @Lit@ constructor of the @RDFLabel@ has been split\ninto three (@Lit@, @LangLit@, and @TypedLit@) and a new @LanguageTag@ type introduced,\nlocal names now use the @LName@ type (previously they were just @Text@ values), and the\nparsers and formatters have renamed to\n@Swish.RDF.Parser.*@ and @Swish.RDF.Formatter.*@.\n\n* Moved a number of modules around: generic code directly into @Swish@\nand the @Swish.RDF.RDF*@ forms renamed to @Swish.RDF.*@. Some modules\nhave been moved out of the @Swish.Utils.*@ namespace. Generic modules\nhave been placed into the @Data.*@ namespace. The @Swish.RDF.Swish*@\nmodules have been moved to @Swish.*@ and @Swish.RDF.SwishMain@ has\nbeen removed; use @Swish@ instead.\n\n* Parsing modules are now in the @Swish.RDF.Parser@ hierarchy and\n@Swish.RDF.RDFParser@ has been renamed to @Swish.RDF.Parser.Utils@.\n\n* Formatting modules are now in the @Swish.RDF.Formatter@ hierarchy.\n\n* RDF literals are now stored using the @Lit@, @LangLit@, or @TypedLit@ constructors\n(@RDFLabel@) rather than using just @Lit@. Language codes are now represented\nby @Swish.RDF.Vocabulary.LanguageTag@ rather than as a @ScopedName@.\n\n* Local names are now represented by the @Swish.QName.LName@ type\nrather than as a @Text@ value. A few routines now return a @Maybe@ value\nrather than error-ing out on invalid input.\n\n* Make use of @Data.List.NonEmpty@ in a few cases.\n\n* Removed @mkTypedLit@ from @Swish.RDF.RDFParser@; use\n@Swish.RDF.RDFDatatype.makeDataTypedLiteral@ instead.\n\n* Removed @asubj@, @apred@ and @aobj@ from @Swish.RDF.GraphClass@ and\n@Swish.RDF.RDFGraph@; use @arcSubj@, @arcPred@ or @arcObj@ instead.\n\n* Removed un-used @containedIn@ element of the @LDGraph@ type class.\nThe arguments to @setArcs@ have been flipped, @replaceArcs@ removed,\n@add@ renamed to @addGraphs@, and @emptyGraph@ added.\n\n* Removed un-used exports from @Swish.Utils.PartOrderedCollection@:\n@partCompareOrd@, @partCompareMaybe@, @partCompareListOrd@, and\n@partCompareListPartOrd@.\n\n* Removed the @Swish.Utils.MiscHelpers@ module and moved single-use functionality\nout of @Swish.Utils.ListHelpers@.\n\n* Removed various exported symbols from a range of modules as they were\nunused.\n\n* Use @Word32@ rather than @Int@ for label indexes (@Swish.GraphMatch.LabelIndex@)\nand in the bnode counts when formatting to N3/Turtle.\n\n* Minor clean up of the @LookupMap@ module: @mergeReplaceOrAdd@ and @mergeReplace@\nare now combined into @mergeReplace@; @mapSelect@, @mapApplyToAll@, and\n@mapTranslate*@ have been removed; documentation slightly improved;\nand a few minor internal clean ups.\n\n* Clarified that @Swish.RDF.RDFDatatypeXsdDecimal@ is for @xsd:decimal@ rather\nthan @xsd:double@.\n\n* Support using versions 0.8 or 0.9 of the @intern@ package and version 0.5 of\n@containers@.\n\n* Switch to @Control.Exception.try@ to avoid deprecation warnings from @System.IO.Error.try@.\n\nChanges in previous versions can be found at <https://bitbucket.org/doug_burke/swish/src/tip/CHANGES>.\n\nReferences:\n\n- <http://www.ninebynine.org/RDFNotes/Swish/Intro.html>\n\n- <http://www.ninebynine.org/Software/swish-0.2.1.html>\n\n- CWM: <http://www.w3.org/2000/10/swap/doc/cwm.html>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.polyparse)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.time)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.4.0") (hsPkgs.intern)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.4.0") (hsPkgs.intern);
      };
      exes = {
        "Swish" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.swish)
          ];
        };
      };
      tests = {
        "test-builtinmap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.swish)
          ];
        };
        "test-graphpartition" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.semigroups)
            (hsPkgs.swish)
          ];
        };
        "test-graph" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.swish)
          ];
        };
        "test-nt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-n3parser" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-n3formatter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-rdfdatatypexsdinteger" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-rdfgraph" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.swish)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
        "test-rdfproofcontext" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-rdfproof" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-rdfquery" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-rdfruleset" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-varbinding" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.swish)
          ];
        };
        "test-lookupmap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.swish)
          ];
        };
        "test-qname" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
      };
    };
  }