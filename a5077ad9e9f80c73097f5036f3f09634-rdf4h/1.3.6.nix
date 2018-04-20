{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = false;
      network-uri = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rdf4h";
          version = "1.3.6";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Calvin Smith, Rob Stewart, Slava Kravchenko";
        maintainer = "Rob Stewart <robstewart@gmail.com>, Slava Kravchenko";
        author = "Calvin Smith, Rob Stewart, Slava Kravchenko";
        homepage = "https://github.com/robstewart57/rdf4h";
        url = "";
        synopsis = "A library for RDF processing in Haskell";
        description = "'RDF for Haskell' is a library for working with RDF in Haskell.\nAt present it includes parsers and serializers for RDF in the N-Triples\nand Turtle, and parsing support for RDF/XML. It provides abilities such as querying\nfor triples  containing a particular subject, predicate, or object, or\nselecting triples that satisfy an arbitrary predicate function.";
        buildType = "Simple";
      };
      components = {
        rdf4h = {
          depends  = (([
            hsPkgs.parsec
            hsPkgs.fgl
            hsPkgs.HTTP
            hsPkgs.hxt
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.deepseq
            hsPkgs.binary
            hsPkgs.text-binary
          ] ++ (if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.containers
            ]
            else [
              hsPkgs.base
            ])) ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim) ++ [
            hsPkgs.network-uri
            hsPkgs.network
          ];
        };
        exes = {
          rdf4h = {
            depends  = (([
              hsPkgs.rdf4h
              hsPkgs.containers
              hsPkgs.text
            ] ++ (if _flags.small_base
              then [
                hsPkgs.base
                hsPkgs.bytestring
              ]
              else [
                hsPkgs.base
              ])) ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim) ++ [
              hsPkgs.network-uri
              hsPkgs.network
            ];
          };
        };
        tests = {
          test-rdf4h = {
            depends  = ([
              hsPkgs.base
              hsPkgs.rdf4h
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.knob
              hsPkgs.directory
              hsPkgs.safe
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim) ++ [
              hsPkgs.network-uri
              hsPkgs.network
            ];
          };
        };
        benchmarks = {
          rdf4h-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.rdf4h
              hsPkgs.text
            ];
          };
        };
      };
    }