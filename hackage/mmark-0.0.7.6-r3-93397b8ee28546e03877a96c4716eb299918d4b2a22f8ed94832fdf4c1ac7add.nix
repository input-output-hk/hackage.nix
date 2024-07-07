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
      identifier = { name = "mmark"; version = "0.0.7.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.com>";
      author = "Mark Karpov <markkarpov92@gmail.com>";
      homepage = "https://github.com/mmark-md/mmark";
      url = "";
      synopsis = "Strict markdown processor for writers";
      description = "Strict markdown processor for writers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."html-entity-map" or (errorHandler.buildDepError "html-entity-map"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-metrics" or (errorHandler.buildDepError "text-metrics"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ] ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"));
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-megaparsec" or (errorHandler.buildDepError "hspec-megaparsec"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mmark" or (errorHandler.buildDepError "mmark"))
            (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench-speed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mmark" or (errorHandler.buildDepError "mmark"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "bench-memory" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mmark" or (errorHandler.buildDepError "mmark"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
          ];
          buildable = true;
        };
      };
    };
  }