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
    flags = { dump-core = false; dump-splices = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "symantic-parser"; version = "0.0.0.20210102"; };
      license = "GPL-3.0-or-later";
      copyright = "Julien Moutinho <julm+symantic-parser@sourcephile.fr>";
      maintainer = "Julien Moutinho <julm+symantic-parser@sourcephile.fr>";
      author = "Julien Moutinho <julm+symantic-parser@sourcephile.fr>";
      homepage = "";
      url = "";
      synopsis = "Parser combinators statically optimized and staged via typed meta-programming";
      description = "This is a work-in-progress experimental library to generate parsers,\nleveraging Tagless-Final interpreters and Typed Template Haskell staging.\n\nThis is an alternative but less powerful/reviewed\nimplementation of [ParsleyHaskell](https://github.com/J-mie6/ParsleyHaskell).\nSee the paper by Jamie Willis, Nicolas Wu, and Matthew\nPickering, admirably well presented at ICFP-2020: [Staged\nSelective Parser\nCombinators](https://icfp20.sigplan.org/details/icfp-2020-papers/20/Staged-Selective-Parser-Combinators).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "symantic-parser-test" = {
          depends = [
            (hsPkgs."symantic-parser" or (errorHandler.buildDepError "symantic-parser"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or (errorHandler.buildDepError "dump-core"));
          buildable = true;
          };
        };
      };
    }