{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "CSPM-cspm";
        version = "0.7.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>";
      author = "Marc Fontaine";
      homepage = "";
      url = "";
      synopsis = "cspm command line tool for analyzing CSPM specifications.";
      description = "cspm is a small command line tool for analyzing CSPM specifications.\nIt supports several modes of operation.\nFor example as:\n\n* 'cspm --help'      -> print a help message.\n\n* 'cspm eval '3+4''  -> evaluate an expression.\n\n* 'cspm trace spec.csp' -> interactively trace a process.\n\n* 'cspm assert spec.csp' -> check the assertions of a specification (only some assertions are supported).\n\n* 'cspm lts spec.csp --dotOut spec.csp.dot' -> compute the labeled transition system of a process and dump it as dot-file.\n\n* 'cspm lts spec.csp --fdrOut spec.csp.fdr'   -> compute the LTS\nand dump it a fdr script suitable for refinement checking.\n\ncspm is not a full featured FDR replacement.\nThe main purpose of cspm is to show how the different CSPM-packages work together.\nLTS computation can demonstrate nice speed-ups on multi-core machines.\nTry for example 'cspm +RTS -N7 -RTS fdr spec.csp' to use 7 cores.";
      buildType = "Simple";
    };
    components = {
      "CSPM-cspm" = {
        depends  = [
          (hsPkgs.CSPM-Frontend)
          (hsPkgs.CSPM-CoreLanguage)
          (hsPkgs.CSPM-FiringRules)
          (hsPkgs.CSPM-Interpreter)
          (hsPkgs.CSPM-ToProlog)
          (hsPkgs.cmdargs)
          (hsPkgs.xml)
          (hsPkgs.containers)
          (hsPkgs.parallel)
          (hsPkgs.base)
          (hsPkgs.pretty)
          (hsPkgs.transformers)
          (hsPkgs.syb)
          (hsPkgs.prettyclass)
          (hsPkgs.hslua)
        ];
      };
      exes = {
        "cspm" = {
          depends  = [
            (hsPkgs.CSPM-Frontend)
            (hsPkgs.CSPM-CoreLanguage)
            (hsPkgs.CSPM-FiringRules)
            (hsPkgs.CSPM-Interpreter)
            (hsPkgs.CSPM-ToProlog)
            (hsPkgs.cmdargs)
            (hsPkgs.xml)
            (hsPkgs.containers)
            (hsPkgs.parallel)
            (hsPkgs.base)
            (hsPkgs.pretty)
            (hsPkgs.transformers)
            (hsPkgs.syb)
            (hsPkgs.prettyclass)
            (hsPkgs.hslua)
          ];
        };
      };
    };
  }