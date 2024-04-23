{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
      dph-prim-seq = true;
      vector = true;
      uvector = true;
      storablevector = true;
    };
    package = {
      specVersion = "1.2";
      identifier = { name = "NoSlow"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Roman Leshchinskiy 2009";
      maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      homepage = "http://www.cse.unsw.edu.au/~rl/code/darcs/NoSlow";
      url = "";
      synopsis = "Microbenchmarks for various array libraries";
      description = "\nNoSlow is a benchmark suite for several Haskell array libraries:\nstandard lists, primitive sequential arrays from the DPH project,\nuvector, vector (primitive, storable and boxed arrays) and\nstorablevector. At the moment, it implements a bunch of fairly random\nloop micro-kernels but will include many more benchmarks in the future.\n\nIn its present state, NoSlow /cannot/ be used to reliably compare the\nperformance of the benchmarked libraries. It can be quite helpful for\nidentifying cases where a closer inspection of the generated code\nmight be warranted, however.\n\nThe package builds two binaries.\n\n[@noslow -u log@] runs the benchmarks and writes the results to 'log'\n\n[@noslow-table log > table.html@] outputs the results as a HTML table.\nIt also supports the following options.\n\n[@noslow-table log --type=Double@] only outputs the results of 'Double'\nbenchmarks.\n\n[@noslow-table --diff log1 log2@] produces a table comparing the\nresults from 'log1' and 'log2' (2 means the first run was 2x slower\nthan the second; 0.5 means 2x faster).\n\nNoSlow is described in more detail here:\n<http://unlines.wordpress.com/2009/11/27/noslow/>.\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "noslow" = {
          depends = ((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ] ++ pkgs.lib.optionals (flags.dph-prim-seq) [
            (hsPkgs."dph-prim-seq" or (errorHandler.buildDepError "dph-prim-seq"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
          ]) ++ pkgs.lib.optional (flags.vector) (hsPkgs."vector" or (errorHandler.buildDepError "vector"))) ++ pkgs.lib.optional (flags.uvector) (hsPkgs."uvector" or (errorHandler.buildDepError "uvector"))) ++ pkgs.lib.optional (flags.storablevector) (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"));
          buildable = true;
        };
        "noslow-table" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }