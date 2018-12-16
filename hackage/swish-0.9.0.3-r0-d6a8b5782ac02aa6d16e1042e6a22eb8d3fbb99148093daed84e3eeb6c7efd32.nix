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
        version = "0.9.0.3";
      };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2003, 2004 G. Klyne; 2009 Vasili I Galchin; 2011, 2012, 2013 Doug Burke; All rights reserved.";
      maintainer = "dburke@cfa.harvard.edu";
      author = "Graham Klyne - GK@ninebynine.org";
      homepage = "https://bitbucket.org/doug_burke/swish/wiki/Home";
      url = "";
      synopsis = "A semantic web toolkit.";
      description = "Swish is a framework, written in the purely functional\nprogramming language Haskell, for performing deductions in\nRDF data using a variety of techniques. Swish is conceived\nas a toolkit for experimenting with RDF inference, and for\nimplementing stand-alone RDF file processors (usable in\nsimilar style to CWM, but with a view to being extensible\nin declarative style through added Haskell function and data\nvalue declarations). It explores Haskell as \\\"a scripting\nlanguage for the Semantic Web\\\".\n\nSwish is a work-in-progress, and currently incorporates:\n\n* Turtle, Notation3 and NTriples input and output. The N3 support is\nincomplete (no handling of @\\@forAll@).\n\n* RDF graph isomorphism testing and merging.\n\n* Display of differences between RDF graphs.\n\n* Inference operations in forward chaining, backward chaining and proof-checking modes.\n\n* Simple Horn-style rule implementations, extendable through variable binding modifiers and filters.\n\n* Class restriction rule implementation, primarily for datatype inferences.\n\n* RDF formal semantics entailment rule implementation.\n\n* Complete, ready-to-run, command-line and script-driven programs.\n\nChanges in version @0.9.0.3@:\n\n* Minor Haddock fix to @Swish.RDF.Parser.Utils.appendURIs@.\n\nChanges in version @0.9.0.2@:\n\n* Updated the upper bound on the polyparse dependency.\n\nChanges in version @0.9.0.1@:\n\n* Updated the upper bound on the semigroup dependency (thanks to\nLeif Warner).\n\nChanges in version @0.9.0.0@:\n\n* Updated to support @hashable-1.2@ series; although this should *not*\nchange the API from the @0.8@ series, I have decided to bump up the version to\n@0.9@ just in case.\n\n* Fix failing test on 64-bit GHC (no change to the library).\n\nChanges in previous versions can be found at <https://bitbucket.org/doug_burke/swish/src/tip/CHANGES>.\n\nReferences:\n\n- <http://www.ninebynine.org/RDFNotes/Swish/Intro.html>\n\n- <http://www.ninebynine.org/Software/swish-0.2.1.html>\n\n- CWM: <http://www.w3.org/2000/10/swap/doc/cwm.html>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.swish)
          ];
        };
      };
      tests = {
        "test-builtinmap" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.swish)
          ];
        };
        "test-graphpartition" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.semigroups)
            (hsPkgs.swish)
          ];
        };
        "test-graph" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.HUnit)
            (hsPkgs.swish)
          ];
        };
        "test-nt" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-n3parser" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-n3formatter" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-rdfdatatypexsdinteger" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-rdfgraph" = {
          depends = [
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-rdfproof" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-rdfquery" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-rdfruleset" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.swish)
            (hsPkgs.text)
          ];
        };
        "test-varbinding" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.swish)
          ];
        };
        "test-qname" = {
          depends = [
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