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
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "SBench"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ds@informatik.uni-bonn.de";
      author = "Daniel Seidel";
      homepage = "";
      url = "";
      synopsis = "A benchmark suite for runtime and heap measurements over\na series of inputs.";
      description = "The package provides a framework for heap and runtime measurements\nfor single Haskell functions. For heap measurements simple programs\nare created, compiled with profiling options and run. You can do\neither a heap profile or a graph for the maximal heap consumption\nof a function over different inputsizes. For runtime measurements\nthe criterion library is used.\nMeasurement data can be stored in a special file format providing\nbesides the data some meta information about the measurement.\nFurthermore measured data can be plotted easily using gnuplot.\nIn particular, it is possible to compare measurements for different\nfunctions (e.g. different version of a semantically equivalent\nfunction) in one diagram. By using gnuplot for drawing, the\nappearance of a diagram is very flexible and can be adjusted\ndirectly to, for example, the style of your paper.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."criterion" or (buildDepError "criterion"))
          (hsPkgs."gnuplot" or (buildDepError "gnuplot"))
          (hsPkgs."hp2any-core" or (buildDepError "hp2any-core"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."txt-sushi" or (buildDepError "txt-sushi"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          ];
        buildable = true;
        };
      };
    }