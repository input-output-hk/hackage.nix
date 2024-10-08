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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "th-alpha"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Julian K. Arni";
      maintainer = "Julian K. Arni <jkarni@gmail.com>";
      author = "Julian K. Arni";
      homepage = "https://github.com/jkarni/th-alpha";
      url = "";
      synopsis = "Alpha equivalence for TH Exp";
      description = "Compare TH expressions (or clauses, patterns, etc.) for alpha equivalence.\nThat is, compare for equality modulo the renaming of bound variables.\n\n> areExpAEq [| \\x -> x |] [| \\y -> y |]\n> -- True\n\n> do\n>    let x = mkName \"x\"\n>    let y = mkName \"y\"\n>    runQ $ (LamE [VarP x] (VarE x)) @= (LamE [VarP y] (VarE y))\n> -- True\n\nThis can be useful when for instance testing libraries that use Template\nHaskell - usually correctness is only defined up to alpha equivalence.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."th-desugar" or (errorHandler.buildDepError "th-desugar"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."th-alpha" or (errorHandler.buildDepError "th-alpha"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          ];
          buildable = true;
        };
      };
    };
  }