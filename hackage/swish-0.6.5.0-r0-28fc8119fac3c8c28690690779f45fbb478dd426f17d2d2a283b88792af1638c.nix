let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "swish"; version = "0.6.5.0"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2003, 2004 G. Klyne; 2009 Vasili I Galchin; 2011, 2012 Doug Burke; All rights reserved.";
      maintainer = "dburke@cfa.harvard.edu";
      author = "Graham Klyne - GK@ninebynine.org";
      homepage = "https://bitbucket.org/doug_burke/swish/wiki/Home";
      url = "";
      synopsis = "A semantic web toolkit.";
      description = "Swish is a framework, written in the purely functional\nprogramming language Haskell, for performing deductions in\nRDF data using a variety of techniques. Swish is conceived\nas a toolkit for experimenting with RDF inference, and for\nimplementing stand-alone RDF file processors (usable in\nsimilar style to CWM, but with a view to being extensible\nin declarative style through added Haskell function and data\nvalue declarations). It explores Haskell as \\\"a scripting\nlanguage for the Semantic Web\\\".\n\nSwish is a work-in-progress, and currently incorporates:\n\n* Turtle, Notation3 and NTriples input and output. The N3 support is\nincomplete (no handling of @\\@forAll@).\n\n* RDF graph isomorphism testing and merging.\n\n* Display of differences between RDF graphs.\n\n* Inference operations in forward chaining, backward chaining and proof-checking modes.\n\n* Simple Horn-style rule implementations, extendable through variable binding modifiers and filters.\n\n* Class restriction rule implementation, primarily for datatype inferences.\n\n* RDF formal semantics entailment rule implementation.\n\n* Complete, ready-to-run, command-line and script-driven programs.\n\nChanges:\n\n[Version 0.6.5.0] Export \"Swish.RDF.TurtleFormatter.parseText\".\nUpdated @filepath@ dependency and removed unused @array@ one.\n\n[Version 0.6.4.0] Added support for xsd:decimal with \"Swish.RDF.RDFDatatypeXsdDecimal\"\nand \"Swish.RDF.MapXsdDecimal\" thanks to William Waites <https://bitbucket.org/ww>.\nAdded \"Swish.RDF.Vocabulary.Provenance\".\n\n[Version 0.6.3.0] Added \"Swish.RDF.Vocabulary.SIOC\".\n\n[Version 0.6.2.1] Hackage did not want to upload @0.6.2.0@, so re-try by\ndisabling the @hpc@ and @developer@ flags for the tests to\nwork around what appears to be <http://hackage.haskell.org/trac/hackage/ticket/811>.\n\n[Version 0.6.2.0] Updated \"Swish.RDF.Vocabulary\" and \"Swish.RDF.RDFGraph\" to\ninclude more common RDF terms. Added \"Swish.RDF.Vocabulary.DublinCore\",\n\"Swish.RDF.Vocabulary.FOAF\", and \"Swish.RDF.Vocabulary.Geo\" modules,\n\"Swish.RDF.Vocabulary.OWL\", \"Swish.RDF.Vocabulary.RDF\", and\n\"Swish.RDF.Vocabulary.XSD\" modules (re-exported from \"Swish.RDF.Vocabulary\"\nas necessary). The test suite has been updated to take advantage of the\nsupport in recent Cabal versions which means that the @tests@ flag has been\nremoved and the minimum Cabal version increased to @1.9.2@. A change was\nmade to the internal labelling of the RDFS container-property axioms in\n\"Swish.RDF.RDFProofContext\".\n\n[Version 0.6.1.2] Corrected minimum mtl constraint from 1 to 2 and updated\nthe maximum time version to 1.4 from 1.3.\n\n[Version 0.6.1.1] Minor improvement to the error message produced by the\nTurtle, Ntriples, and N3 parsers: a fragment of the remaining text is\nincluded to provide some context (still lacking compared to the information\nprovided in version 0.3.2.1).\n\n[Version 0.6.1.0] Added support for Turtle format (added the\n\"Swish.RDF.TurtleFormatter\" and \"Swish.RDF.TurtleParser\" modules).\n\n[Version 0.6.0.2] Minor internal changes.\n\n[Version 0.6.0.1] Moved to using hashing routine using the @Data.Hashable@\ninterface rather than \"Swish.Utils.MiscHelpers\", which is deprecated.\n\n[Version 0.6.0.0] Add \"Data.Interned.URI\" and use it to speed up the 'QName'\nequality check.\n\n[Version 0.5.0.3] Didn't get all the required @FlexibleInstances@.\n\n[Version 0.5.0.2] HUnit constraint is only added when the @tests@ flag\nis used. Removed random and bytestring constraints. Add @FlexibleInstances@\npragma for ghc 7.2 compatability.\n\n[Version 0.5.0.1] Update bounds on package constraints to try and get a\nsuccessful build on ghc 7.2; removed parallel constraint as not used.\n\n[Version 0.5.0.0] The constructors for @ScopedName@ and @QName@ have been\nremoved to hide some experimental optimisations (partly added in 0.4.0.0);\n@Namespace@ has seen a similar change but no optimisation. Output speed\nshould be improved but no systematic analysis has been performed.\n\n[Version 0.4.0.0] Moving to using polyparse for parsing and @Text@ rather than\n@String@ where appropriate. Use of @URI@ and @Maybe Text@ rather than @String@ in the @Namespace@\ntype. Removed the Swish.Utils.DateTime and Swish.Utils.TraceHelpers\nmodules. Symbols have been removed from the export lists of the following modules:\nSwish.Utils.LookupMap, Swish.Utils.ListHelpers, Swish.Utils.MiscHelpers,\nSwish.Utils.ShowM. Some significant improvements to parsing speed, but no\nconcerted effort or checks made yet.\n\n[Version 0.3.2.1] Marked a number of routines from the Swish.Utils modules\nas deprecated. Use foldl' rather than foldl.\n\n[Version 0.3.2.0] The N3 parser no longer assumes a set of pre-defined namespaces.\nThere is no API change worthy of a bump to the minor version number, but it\nis a large-enough change in behaviour that I felt the need for the update.\n\n[Version 0.3.1.2] 'Swish.RDF.RDFGraph.toRDFGraph' now sets up the\nnamespace map of the graph based on the input labels (previously it\nleft the map empty).\n\n[Version 0.3.1.1] Bug fixes for N3 format: strings ending in a\ndouble quote character are now written out correctly and\n@xsd:double@ values are not written using XSD canonical form/capital\n@E@ but with a lower-case @e@. On input of N3,\nliterals that match @xsd:double@ are converted to XSD canonical form\n(as stored in 'RDFLabel'), which can make simple textual comparison\nof literals fail. The 'Eq' instance of 'RDFLabel' now ignores the\ncase of the language tag for literals and the 'Show' instance\nuses XSD canonical form for @xsd:boolean@, @xsd:integer@,\n@xsd:decimal@ and @xsd:double@ literals.\nNoted that the 'ToRDFLable' and 'FromRDFLabel' classes replicate\nexisting functionality in the \"Swish.RDF.RDFDatatype\" module.\n\n[Version 0.3.1.0] Added the `Swish.RDF.RDFGraph.ToRDFLabel` and\n`Swish.RDF.RDFGraph.FromRDFLabel` classes and the\n`Swish.RDF.RDFGraph.toRDFTriple` and `Swish.RDF.RDFGraph.fromRDFTriple`\nfunctions.\nAdded instances: @IsString RDFLabel@, @IsString QName@, @IsString ScopedName@\nand @Monoid NSGraph@.\nThe modules \"Swish\" and \"Swish.RDF\" have been introduced to provide\ndocumentation. The module \"Swish.Utils.DateTime\" is deprecated and\nwill be removed in a later release.\nThe N3 formatter now writes out literals with @xsd:boolean@, @xsd:integer@,\n@xsd:decimal@ and @xsd:double@ types as literals rather than as a typed string.\n\n[Version 0.3.0.3] Changed @scripts/SwishExample.ss@ script so that the\nproof succeeds. Some documentation improvements, including a discussion\nof the Swish script format (see \"Swish.RDF.SwishScript\"). Very minor\nchanges to behavior of Swish in several edge cases.\n\n[Version 0.3.0.2] Bugfix: stop losing triples with a bnode subject when\nusing the N3Formatter; this also makes the @scripts/SwishTest.ss@ test\npass again. Several commands in Swish scripts now create screen\noutput (mainly to check what it is doing). Added the @developer@\nflag for building.\n\n[Version 0.3.0.1] updates the Swish script parser to work with the\nchanges in 0.3.0.0 (reported by Rick Murphy).\nSeveral example scripts are installed in the\n@scripts/@ directory, although only @VehicleCapacity.ss@ works\nwith this release.\n\n[Version 0.3.0.0] is an attempt to update\nversion 0.2.1 (<http://hackage.haskell.org/package/swish-0.2.1/>)\nto build against\na recent ghc install, with some clean ups - including support for\nthe current N3 specification - and the addition of the\nNTriples format. It has not been tested against ghc7.\n\nReferences:\n\n- <http://www.ninebynine.org/RDFNotes/Swish/Intro.html>\n\n- <http://www.ninebynine.org/Software/swish-0.2.1.html>\n\n- CWM: <http://www.w3.org/2000/10/swap/doc/cwm.html>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."intern" or (buildDepError "intern"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."polyparse" or (buildDepError "polyparse"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "Swish" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."intern" or (buildDepError "intern"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-builtinmap" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."intern" or (buildDepError "intern"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          buildable = true;
          };
        "test-graphpartition" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        "test-graph" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        "test-nt" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."intern" or (buildDepError "intern"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            ];
          buildable = true;
          };
        "test-n3parser" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."intern" or (buildDepError "intern"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            ];
          buildable = true;
          };
        "test-n3formatter" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."intern" or (buildDepError "intern"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            ];
          buildable = true;
          };
        "test-rdfdatatypexsdinteger" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."intern" or (buildDepError "intern"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            ];
          buildable = true;
          };
        "test-rdfgraph" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."intern" or (buildDepError "intern"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        "test-rdfproofcontext" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."intern" or (buildDepError "intern"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            ];
          buildable = true;
          };
        "test-rdfproof" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."intern" or (buildDepError "intern"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            ];
          buildable = true;
          };
        "test-rdfquery" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."intern" or (buildDepError "intern"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            ];
          buildable = true;
          };
        "test-rdfruleset" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."intern" or (buildDepError "intern"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            ];
          buildable = true;
          };
        "test-varbinding" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."intern" or (buildDepError "intern"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        "test-lookupmap" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        "test-qname" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."intern" or (buildDepError "intern"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }