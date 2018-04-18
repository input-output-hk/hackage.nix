{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      th = true;
    } // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "syntactic";
          version = "3.7";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011-2015, Emil Axelsson";
        maintainer = "78emil@gmail.com";
        author = "Emil Axelsson";
        homepage = "https://github.com/emilaxelsson/syntactic";
        url = "";
        synopsis = "Generic representation and manipulation of abstract syntax";
        description = "The library provides a generic representation of type-indexed abstract syntax trees\n(or indexed data types in general). It also permits the definition of open syntax\ntrees based on the technique in Data Types à la Carte [1].\n\n(Note that the difference between version 2.x and 3.0 is not that big. The bump to\n3.0 was done because the modules changed namespace.)\n\nFor more information, see\n\\\"A Generic Abstract Syntax Model for Embedded Languages\\\"\n(ICFP 2012):\n\n* Paper:\n<http://www.cse.chalmers.se/~emax/documents/axelsson2012generic.pdf>\n\n* Slides:\n<http://www.cse.chalmers.se/~emax/documents/axelsson2012generic-slides.pdf>\n\nExample EDSLs can be found in the @examples@ folder.\n\n\\[1\\] W. Swierstra. Data Types à la Carte.\n/Journal of Functional Programming/, 18(4):423-436, 2008,\n<http://dx.doi.org/10.1017/S0956796808006758>.";
        buildType = "Simple";
      };
      components = {
        syntactic = {
          depends  = (([
            hsPkgs.base
            hsPkgs.constraints
            hsPkgs.containers
            hsPkgs.data-hash
            hsPkgs.deepseq
            hsPkgs.mtl
            hsPkgs.syb
            hsPkgs.tree-view
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.base-orphans) ++ pkgs.lib.optional compiler.isGhc hsPkgs.tagged) ++ pkgs.lib.optional _flags.th hsPkgs.template-haskell;
        };
        tests = {
          examples = {
            depends  = [
              hsPkgs.syntactic
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.tagged
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.utf8-string
            ];
          };
        };
        benchmarks = {
          syntactic-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.syntactic
            ];
          };
        };
      };
    }