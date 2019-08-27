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
      specVersion = "1.10";
      identifier = { name = "algebraic-graphs"; version = "0.0.1"; };
      license = "MIT";
      copyright = "Andrey Mokhov, 2016-2017";
      maintainer = "Andrey Mokhov <andrey.mokhov@gmail.com>, github: @snowleopard";
      author = "Andrey Mokhov <andrey.mokhov@gmail.com>, github: @snowleopard";
      homepage = "https://github.com/snowleopard/alga";
      url = "";
      synopsis = "A library for algebraic graph construction and transformation";
      description = "A library for algebraic construction and manipulation of graphs in Haskell. See\n<https://github.com/snowleopard/alga-paper this paper> for the motivation behind\nthe library, the underlying theory and implementation details.\n\nThe top-level module \"Algebra.Graph\" defines the core data type 'Algebra.Graph.Graph'\nwhich is a deep embedding of four graph construction primitives 'Algebra.Graph.empty',\n'Algebra.Graph.vertex', 'Algebra.Graph.overlay' and 'Algebra.Graph.connect'. More\nconventional graph representations can be found in \"Algebra.Graph.AdjacencyMap\" and\n\"Algebra.Graph.Relation\".\n\nThe type classes defined in \"Algebra.Graph.Class\" and \"Algebra.Graph.HigherKinded.Class\"\ncan be used for polymorphic graph construction and manipulation. Also see\n\"Algebra.Graph.Fold\" that defines the Boehm-Berarducci encoding of algebraic graphs and\nprovides additional flexibility for polymorphic graph manipulation.\n\nThis is an experimental library and the API will be unstable until version 1.0.0.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      tests = {
        "test-alga" = {
          depends = [
            (hsPkgs."algebraic-graphs" or (buildDepError "algebraic-graphs"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      benchmarks = {
        "benchmark-alga" = {
          depends = [
            (hsPkgs."algebraic-graphs" or (buildDepError "algebraic-graphs"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }