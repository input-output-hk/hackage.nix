{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      developer = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "swish";
        version = "0.8.0.3";
      };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2003, 2004 G. Klyne; 2009 Vasili I Galchin; 2011, 2012 Doug Burke; All rights reserved.";
      maintainer = "dburke@cfa.harvard.edu";
      author = "Graham Klyne - GK@ninebynine.org";
      homepage = "https://bitbucket.org/doug_burke/swish/wiki/Home";
      url = "";
      synopsis = "A semantic web toolkit.";
      description = "Swish is a framework, written in the purely functional\nprogramming language Haskell, for performing deductions in\nRDF data using a variety of techniques. Swish is conceived\nas a toolkit for experimenting with RDF inference, and for\nimplementing stand-alone RDF file processors (usable in\nsimilar style to CWM, but with a view to being extensible\nin declarative style through added Haskell function and data\nvalue declarations). It explores Haskell as \\\"a scripting\nlanguage for the Semantic Web\\\".\n\nSwish is a work-in-progress, and currently incorporates:\n\n* Turtle, Notation3 and NTriples input and output. The N3 support is\nincomplete (no handling of @\\@forAll@).\n\n* RDF graph isomorphism testing and merging.\n\n* Display of differences between RDF graphs.\n\n* Inference operations in forward chaining, backward chaining and proof-checking modes.\n\n* Simple Horn-style rule implementations, extendable through variable binding modifiers and filters.\n\n* Class restriction rule implementation, primarily for datatype inferences.\n\n* RDF formal semantics entailment rule implementation.\n\n* Complete, ready-to-run, command-line and script-driven programs.\n\nChanges in version @0.8.0.3@:\n\n* Fix up the tests so that they pass with @hashable-1.1.2.5@.\n\n* Update to support @network-2.4.0.0@: @Network.URI.Ord@ is now a no-op\nsince the network package provides the instance; fix to change in API\nof @relativeTo@.\n\n* Removed binary constraint as unused.\n\nChanges in version @0.8.0.2@:\n\n* Restrict @hashable@ since tests fail with @1.1.2.5@\n(this is a hack).\n\n* Updated @directory@ constraint to include @1.2@ on ghc 7.6.\n\nChanges in version @0.8.0.1@ (unreleased):\n\n* Internal changes to Turtle/N3 formatting. No user-visible changes.\n\nChanges in version @0.8.0.0@:\n\n* The @LDGraph@ class now uses @Set (Arc lb)@, rather than @[Arc lb]@,\nfor @setArcs@, @getArcs@, and @update@. Several data types - e.g.\n@NSGraph@ - now use sets rather than lists. There are a number of API tweaks -\ne.g. the addition of Ord constraints and the removal of Functor, Foldable,\nand Traversable instances. Not all list of Arcs have been converted\nsince a review is needed to see where it makes sense and where it does not.\nThis definitely speeds up some operations but\na full analysis has not been attempted.\n\n* Replaced used of @Data.LookupMap@ with @Data.Map.Map@. This has led to the\nremoval of a number of language extensions from some modules.\n\n* Added @Network.URI.Ord@ to provide an ordering for URIs.\n\n* A few other minor changes have been made: the removal of @subset@ and\n@equiv@ from\n@Swish.Utils.ListHelpers@; the ordering used for @RDFLabel@ values has\nchanged; added a @Monoid@ instance for @VarBinding@; added @Ord@\ninstances for a number of containers; removed some un-needed constraints;\nadded @Network.URI.Ord@.\n\n* The containers upper limit has been increased to support version 0.5.\n\nChanges in previous versions can be found at <https://bitbucket.org/doug_burke/swish/src/tip/CHANGES>.\n\nReferences:\n\n- <http://www.ninebynine.org/RDFNotes/Swish/Intro.html>\n\n- <http://www.ninebynine.org/Software/swish-0.2.1.html>\n\n- CWM: <http://www.w3.org/2000/10/swap/doc/cwm.html>\n";
      buildType = "Simple";
    };
    components = {
      "swish" = {
        depends  = ((([
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.polyparse)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.time)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.4.0") (hsPkgs.intern)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.4.0") (hsPkgs.intern)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6.0") (hsPkgs.directory)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.6.0") (hsPkgs.directory);
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
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.swish)
          ];
        };
        "test-graphpartition" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.semigroups)
            (hsPkgs.swish)
          ];
        };
        "test-graph" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.HUnit)
            (hsPkgs.swish)
          ];
        };
        "test-nt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-n3parser" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-n3formatter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-rdfdatatypexsdinteger" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-rdfgraph" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
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
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-rdfproof" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-rdfquery" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-rdfruleset" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-varbinding" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.swish)
          ];
        };
        "test-qname" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
      };
    };
  }