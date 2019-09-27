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
    flags = {
      dph-prim-seq = true;
      vector = true;
      uvector = true;
      storablevector = true;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "NoSlow"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Roman Leshchinskiy 2009-10";
      maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      homepage = "http://code.haskell.org/NoSlow";
      url = "";
      synopsis = "Microbenchmarks for various array libraries";
      description = "\nNoSlow is a benchmark suite for several Haskell array libraries:\nstandard lists, primitive sequential arrays from the DPH project,\nuvector, vector (primitive, storable and boxed arrays) and\nstorablevector. At the moment, it implements a bunch of fairly random\nloop micro-kernels and a couple of small array algorithms. It will\ninclude many more benchmarks in the future.\n\nIn its present state, NoSlow /cannot/ be used to reliably compare the\nperformance of the benchmarked libraries. It can be quite helpful for\nidentifying cases where a closer inspection of the generated code\nmight be warranted, however.\n\nThe package builds two binaries: @noslow@ and @noslow-table@.\n\n[@noslow -o log@] runs the benchmarks and writes the results to 'log'\n\n[@noslow-table log -o table.html --html@] outputs the results from\n@log@ as a HTML table.\n\n[@noslow-table log -o table.html --raw --csv@] outputs the results\nfrom @log@ as a CSV file suitable for importing into spreadsheets.\n\n[@noslow-table --diff log1 log2@ -o table.html@] produces a table\ncomparing the results from 'log1' and 'log2' (2 means the first run was\n2x slower than the second; 0.5 means 2x faster).\n\n[@noslow-table --help@] lists additional options.\n\nNoSlow is described in more detail here:\n<http://unlines.wordpress.com/2009/11/27/noslow/>.\n\nChanges since version 0.1\n\n* Renamed and reorganised loop kernels\n\n* Several small array algorithms organised in the new\nbenchmark category @mini@\n\n* More reliable benchmark execution\n\n* Support for producing CSV files\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "noslow" = {
          depends = ((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ] ++ (pkgs.lib).optionals (flags.dph-prim-seq) [
            (hsPkgs."dph-prim-seq" or (buildDepError "dph-prim-seq"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            ]) ++ (pkgs.lib).optional (flags.vector) (hsPkgs."vector" or (buildDepError "vector"))) ++ (pkgs.lib).optional (flags.uvector) (hsPkgs."uvector" or (buildDepError "uvector"))) ++ (pkgs.lib).optional (flags.storablevector) (hsPkgs."storablevector" or (buildDepError "storablevector"));
          buildable = true;
          };
        "noslow-table" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            ];
          buildable = true;
          };
        };
      };
    }