{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "CSPM-cspm";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Marc Fontaine <fontaine@cs.uni-duesseldorf.de>";
        author = "2010 Marc Fontaine";
        homepage = "http://www.stups.uni-duesseldorf.de/~fontaine/csp";
        url = "";
        synopsis = "cspm command line tool for analyzing CSPM specifications.";
        description = "cspm is a small command line tool for analyzing CSPM specifications.\nIt supports four modes of operation ('eval', 'trace', 'dot' and 'fdr')\nand can be called for example as:\n\n* 'cspm --help'      -> print a help message.\n\n* 'cspm eval '3+4''  -> evaluate an expression.\n\n* 'cspm trace spec.csp' -> interactively trace a process.\n\n* 'cspm dot spec.csp'   -> compute the labeled transition system of a process\nand dump it as dot-file.\n\n* 'cspm fdr spec.csp'   -> compute the LTS\nand dump it a fdr script suitable for refinement checking.\n\ncspm is not a full featured FDR replacement.\nThe main purpose of cspm is to show how the different CSPM-packages work together.\nLTS computation can demonstrate nice speed-ups on multi-core machines.\nTry for example 'cspm +RTS -N7 -RTS fdr spec.csp' to use 7 cores.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cspm = {
            depends  = [
              hsPkgs.CSPM-Frontend
              hsPkgs.CSPM-CoreLanguage
              hsPkgs.CSPM-FiringRules
              hsPkgs.CSPM-Interpreter
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.parallel
              hsPkgs.base
            ];
          };
        };
      };
    }