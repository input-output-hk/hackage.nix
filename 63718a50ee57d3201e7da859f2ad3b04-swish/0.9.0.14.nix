{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
      w3ctests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "swish";
          version = "0.9.0.14";
        };
        license = "LicenseRef-LGPL";
        copyright = "(c) 2003, 2004 G. Klyne; 2009 Vasili I Galchin; 2011, 2012, 2013, 2014 Doug Burke; All rights reserved.";
        maintainer = "dburke@cfa.harvard.edu";
        author = "Graham Klyne - GK@ninebynine.org";
        homepage = "https://bitbucket.org/doug_burke/swish/wiki/Home";
        url = "";
        synopsis = "A semantic web toolkit.";
        description = "Swish is a framework, written in the purely functional\nprogramming language Haskell, for performing deductions in\nRDF data using a variety of techniques. Swish is conceived\nas a toolkit for experimenting with RDF inference, and for\nimplementing stand-alone RDF file processors (usable in\nsimilar style to CWM, but with a view to being extensible\nin declarative style through added Haskell function and data\nvalue declarations). It explores Haskell as \\\"a scripting\nlanguage for the Semantic Web\\\".\n\nSwish is a work-in-progress, and currently incorporates:\n\n* Turtle, Notation3 and NTriples input and output. The N3 support is\nincomplete (no handling of @\\@forAll@).\n\n* RDF graph isomorphism testing and merging.\n\n* Display of differences between RDF graphs.\n\n* Inference operations in forward chaining, backward chaining and proof-checking modes.\n\n* Simple Horn-style rule implementations, extendable through variable binding modifiers and filters.\n\n* Class restriction rule implementation, primarily for datatype inferences.\n\n* RDF formal semantics entailment rule implementation.\n\n* Complete, ready-to-run, command-line and script-driven programs.\n\nChanges in version @0.9.0.14@:\n\n* Updated the upper bound on the network dependency.\n\nChanges in version @0.9.0.13@:\n\n* Updated the upper bound on the semigroups dependency.\n\nChanges in version @0.9.0.12@:\n\n* Updated the upper bound on the text dependency to include version\n1.1 (requires an update to semigroups to use).\n\nChanges in version @0.9.0.11@:\n\n* Hackage has a better chance of finding the CHANGELOG file if it\nis included in the distribution! There are *no* changes to the\nlibrary or examples.\n\nChanges in version @0.9.0.10@:\n\n* Renamed CHANGES to CHANGELOG in the hope it will get picked up\nby Hackage. There are *no* changes to the library or examples.\n\nChanges in version @0.9.0.9@:\n\n* Updated the upper bound on the semigroups dependency (thanks to\nLeif Warner).\n\n* Updated the upper bound on the text dependency (however, requires\nchanges to intern and semigroups to use).\n\nChanges in version @0.9.0.8@:\n\n* Updated the upper bound on the semigroups dependency (thanks to\nLeif Warner).\n\n* Display library version when running the @runw3ctests@ executable\nand ensure there is a space between file name and test result in the\nscreen output.\n\nChanges in version @0.9.0.7@:\n\n* Minor documentation fix for @Swish.RDF.Graph.quote@.\n\nChanges in version @0.9.0.6@:\n\n* Turtle/N3 output: @\\\\f@ characters in literals are converted to\n@\\\\u000C@ to work around some interoperability issues.\n\n* Changed the test handling to use @test-framework@.\n\nChanges in version @0.9.0.5@:\n\n* Turtle/N3 output: more changes for string literals containing\ndouble-quote characters.\n\n* N3 Parser: parsing of string literals within three quote marks has\nbeen updated to match the Turtle parser.\n\n* Turtle Parser: a few more error messages have been added.\n\nChanges in version @0.9.0.4@:\n\n* Turtle parser: updated to the Candidate Recommendation (19 February 2013)\nspecification; added minor improvements to error messages when\ngiven invalid syntax. As part of the upgrade, there is no longer a\ndefault namespace set up for the empty prefix and numeric literals\nare no-longer converted into a canonical form.\n\n* Turtle/N3 output: improved string formatting (better handling of\nstring literals with three or more consecutive @\\\"@ characters); blank\nnode handling has been improved but the output may not be as elegant.\n\n* NTriples parser: now accepts upper-case language tags such as\n@en-UK@ (case is preserved).\n\n* @Swish.QName.LName@ names can now contain @#@, @:@ and @/@ characters.\n\n* Added tests for the Turtle parser and formatter.\n\n* The new @w3ctests@ flag will build the @runw3ctests@ executable,\nwhich will run the W3C Turtle tests (if downloaded from\n<http://www.w3.org/2013/TurtleTests/>).\n\n* Minor fixes and additions to the documentation.\n\nChanges in version @0.9.0.3@:\n\n* Minor Haddock fix to @Swish.RDF.Parser.Utils.appendURIs@.\n\nChanges in version @0.9.0.2@:\n\n* Updated the upper bound on the polyparse dependency.\n\nChanges in version @0.9.0.1@:\n\n* Updated the upper bound on the semigroups dependency (thanks to\nLeif Warner).\n\nChanges in version @0.9.0.0@:\n\n* Updated to support @hashable-1.2@ series; although this should *not*\nchange the API from the @0.8@ series, I have decided to bump up the version to\n@0.9@ just in case.\n\n* Fix failing test on 64-bit GHC (no change to the library).\n\nChanges in previous versions can be found at <https://bitbucket.org/doug_burke/swish/src/tip/CHANGELOG>.\n\nReferences:\n\n- <http://www.ninebynine.org/RDFNotes/Swish/Intro.html>\n\n- <http://www.ninebynine.org/Software/swish-0.2.1.html>\n\n- CWM: <http://www.w3.org/2000/10/swap/doc/cwm.html>\n";
        buildType = "Simple";
      };
      components = {
        swish = {
          depends  = ((([
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.polyparse
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.time
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.intern) ++ pkgs.lib.optional compiler.isGhc hsPkgs.intern) ++ pkgs.lib.optional compiler.isGhc hsPkgs.directory) ++ pkgs.lib.optional compiler.isGhc hsPkgs.directory;
        };
        exes = {
          Swish = {
            depends  = [
              hsPkgs.base
              hsPkgs.swish
            ];
          };
          runw3ctests = {
            depends  = pkgs.lib.optionals _flags.w3ctests [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.network
              hsPkgs.swish
              hsPkgs.text
            ];
          };
        };
        tests = {
          test-builtinmap = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
          test-graphpartition = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.semigroups
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
          test-graph = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.HUnit
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
          test-nt = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ];
          };
          test-turtle = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.network
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ];
          };
          test-n3parser = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.network
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ];
          };
          test-n3formatter = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.network
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ];
          };
          test-rdfdatatypexsdinteger = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.network
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ];
          };
          test-rdfgraph = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.network
              hsPkgs.old-locale
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
              hsPkgs.time
            ];
          };
          test-rdfproofcontext = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.network
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ];
          };
          test-rdfproof = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.network
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ];
          };
          test-rdfquery = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.network
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ];
          };
          test-rdfruleset = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.network
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ];
          };
          test-varbinding = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
          test-qname = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.network
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ];
          };
        };
      };
    }