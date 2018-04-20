{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      w3ctests = false;
      network-uri = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "swish";
          version = "0.9.1.9";
        };
        license = "LicenseRef-LGPL";
        copyright = "(c) 2003, 2004 G. Klyne; 2009 Vasili I Galchin; 2011, 2012, 2013, 2014, 2015, 2016, 2017 Doug Burke; All rights reserved.";
        maintainer = "dburke@cfa.harvard.edu";
        author = "Graham Klyne - GK@ninebynine.org";
        homepage = "https://bitbucket.org/doug_burke/swish/wiki/Home";
        url = "";
        synopsis = "A semantic web toolkit.";
        description = "Swish is a framework, written in the purely functional\nprogramming language Haskell, for performing deductions in\nRDF data using a variety of techniques. Swish is conceived\nas a toolkit for experimenting with RDF inference, and for\nimplementing stand-alone RDF file processors (usable in\nsimilar style to CWM, but with a view to being extensible\nin declarative style through added Haskell function and data\nvalue declarations). It explores Haskell as \\\"a scripting\nlanguage for the Semantic Web\\\".\n\nSwish is a work-in-progress, and currently incorporates:\n\n* Turtle, Notation3 and NTriples input and output. The N3 support is\nincomplete (no handling of @\\@forAll@).\n\n* RDF graph isomorphism testing and merging.\n\n* Display of differences between RDF graphs.\n\n* Inference operations in forward chaining, backward chaining and proof-checking modes.\n\n* Simple Horn-style rule implementations, extendable through variable binding modifiers and filters.\n\n* Class restriction rule implementation, primarily for datatype inferences.\n\n* RDF formal semantics entailment rule implementation.\n\n* Complete, ready-to-run, command-line and script-driven programs.\n\nChanges are given in the <https://bitbucket.org/doug_burke/swish/src/tip/CHANGELOG>.\n\nReferences:\n\n- <http://www.ninebynine.org/RDFNotes/Swish/Intro.html>\n\n- <http://www.ninebynine.org/Software/swish-0.2.1.html>\n\n- CWM: <http://www.w3.org/2000/10/swap/doc/cwm.html>\n";
        buildType = "Simple";
      };
      components = {
        swish = {
          depends  = (((([
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.polyparse
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.time
          ] ++ (if _flags.network-uri
            then [ hsPkgs.network-uri ]
            else [
              hsPkgs.network-uri
              hsPkgs.network
            ])) ++ pkgs.lib.optional compiler.isGhc hsPkgs.intern) ++ pkgs.lib.optional compiler.isGhc hsPkgs.intern) ++ pkgs.lib.optional compiler.isGhc hsPkgs.directory) ++ pkgs.lib.optional compiler.isGhc hsPkgs.directory;
        };
        exes = {
          Swish = {
            depends  = [
              hsPkgs.base
              hsPkgs.swish
            ];
          };
          runw3ctests = {
            depends  = pkgs.lib.optionals _flags.w3ctests ([
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.swish
              hsPkgs.text
            ] ++ (if _flags.network-uri
              then [ hsPkgs.network-uri ]
              else [
                hsPkgs.network-uri
                hsPkgs.network
              ]));
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
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ] ++ (if _flags.network-uri
              then [ hsPkgs.network-uri ]
              else [
                hsPkgs.network-uri
                hsPkgs.network
              ]);
          };
          test-n3parser = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ] ++ (if _flags.network-uri
              then [ hsPkgs.network-uri ]
              else [
                hsPkgs.network-uri
                hsPkgs.network
              ]);
          };
          test-n3formatter = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ] ++ (if _flags.network-uri
              then [ hsPkgs.network-uri ]
              else [
                hsPkgs.network-uri
                hsPkgs.network
              ]);
          };
          test-rdfdatatypexsdinteger = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ] ++ (if _flags.network-uri
              then [ hsPkgs.network-uri ]
              else [
                hsPkgs.network-uri
                hsPkgs.network
              ]);
          };
          test-rdfgraph = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.old-locale
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
              hsPkgs.time
            ] ++ (if _flags.network-uri
              then [ hsPkgs.network-uri ]
              else [
                hsPkgs.network-uri
                hsPkgs.network
              ]);
          };
          test-rdfproofcontext = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ] ++ (if _flags.network-uri
              then [ hsPkgs.network-uri ]
              else [
                hsPkgs.network-uri
                hsPkgs.network
              ]);
          };
          test-rdfproof = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ] ++ (if _flags.network-uri
              then [ hsPkgs.network-uri ]
              else [
                hsPkgs.network-uri
                hsPkgs.network
              ]);
          };
          test-rdfquery = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ] ++ (if _flags.network-uri
              then [ hsPkgs.network-uri ]
              else [
                hsPkgs.network-uri
                hsPkgs.network
              ]);
          };
          test-rdfruleset = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ] ++ (if _flags.network-uri
              then [ hsPkgs.network-uri ]
              else [
                hsPkgs.network-uri
                hsPkgs.network
              ]);
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
              hsPkgs.swish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
            ] ++ (if _flags.network-uri
              then [ hsPkgs.network-uri ]
              else [
                hsPkgs.network-uri
                hsPkgs.network
              ]);
          };
        };
      };
    }