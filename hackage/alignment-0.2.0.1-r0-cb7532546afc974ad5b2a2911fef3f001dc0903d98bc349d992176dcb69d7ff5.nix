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
    flags = { dev = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "alignment"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2022-2026 Tony Morris";
      maintainer = "Tony Morris <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Tony Morris <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://gitlab.com/system-f/code/alignment";
      url = "";
      synopsis = "Principled functor alignment with leftovers";
      description = "A principled approach to zipping functors that preserves both matched\npairs and leftovers.\n\nThe @alignment@ library provides type classes and operations for aligning\ntwo functors into a structure (@This@) that captures:\n\n* Matched pairs where both functors have elements at the same position\n\n* Leftovers when one functor is longer than the other\n\nThis is more principled than traditional @zip@ which silently discards\nextra elements. The library uses functional dependencies (@f -> g@) to\nrelate the \\\"paired\\\" functor to the \\\"leftover\\\" functor, ensuring type safety.\n\nKey features:\n\n* @Semialign@, @Align@, and @Unalign@ type classes with comprehensive laws\n\n* @Unalign@ provides inverse operation to recover original functors\n\n* Full lens\\/optics integration\n\n* Instances for common functors: @[]@, @Maybe@, @NonEmpty@, @Vector@,\n@Map@, @Seq@, and more\n\n* Testable law-checking functions for property-based testing\n\n* Complete documentation with 211 doctests\n\nExample:\n\n> import Data.Alignment\n>\n> -- Align two lists of different lengths\n> align [1,2,3] [10,20] :: This [] NonEmpty Int Int\n> -- Result: This [(1,10),(2,20)] (Just (Left (3 :| [])))\n\n<<https://logo.systemf.com.au/systemf-450x450.png>>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."assoc" or (errorHandler.buildDepError "assoc"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
        ];
        buildable = true;
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.doctest.components.exes.doctest or (pkgs.pkgsBuildBuild.doctest or (errorHandler.buildToolDepError "doctest:doctest")))
          ];
          buildable = true;
        };
        "laws" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."alignment" or (errorHandler.buildDepError "alignment"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "alignment-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."alignment" or (errorHandler.buildDepError "alignment"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "zip-unzip-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."alignment" or (errorHandler.buildDepError "alignment"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }