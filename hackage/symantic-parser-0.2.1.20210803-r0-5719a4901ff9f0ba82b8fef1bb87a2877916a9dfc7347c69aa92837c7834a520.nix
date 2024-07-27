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
    flags = { dump-core = false; disable-ormolu-check = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "symantic-parser"; version = "0.2.1.20210803"; };
      license = "AGPL-3.0-or-later";
      copyright = "Julien Moutinho <julm+symantic-parser@sourcephile.fr>";
      maintainer = "mailto:~julm/symantic-parser@todo.hut.sourcephile.fr";
      author = "Julien Moutinho <julm+symantic-parser@sourcephile.fr>";
      homepage = "https://git.hut.sourcephile.fr/~julm/symantic-parser";
      url = "";
      synopsis = "Parser combinators statically optimized and staged via typed meta-programming";
      description = "This is a work-in-progress experimental library to generate parsers,\nleveraging Tagless-Final interpreters and Typed Template Haskell staging.\n\nThis is an alternative but less powerful/reviewed\nimplementation of [ParsleyHaskell](https://github.com/J-mie6/ParsleyHaskell).\nSee the paper by Jamie Willis, Nicolas Wu, and Matthew Pickering,\nadmirably well presented at ICFP-2020: [Staged Selective Parser Combinators](https://icfp20.sigplan.org/details/icfp-2020-papers/20/Staged-Selective-Parser-Combinators).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."symantic-base" or (errorHandler.buildDepError "symantic-base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      sublibs = {
        "parsers" = {
          depends = [
            (hsPkgs."symantic-parser" or (errorHandler.buildDepError "symantic-parser"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."symantic-base" or (errorHandler.buildDepError "symantic-base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "symantic-parser-tests" = {
          depends = [
            (hsPkgs."symantic-parser" or (errorHandler.buildDepError "symantic-parser"))
            (hsPkgs."symantic-parser".components.sublibs.parsers or (errorHandler.buildDepError "symantic-parser:parsers"))
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
          ] ++ pkgs.lib.optional (flags.dump-core) (hsPkgs."dump-core" or (errorHandler.buildDepError "dump-core"));
          build-tools = pkgs.lib.optional (!flags.disable-ormolu-check) (hsPkgs.pkgsBuildBuild.ormolu.components.exes.ormolu or (pkgs.pkgsBuildBuild.ormolu or (errorHandler.buildToolDepError "ormolu:ormolu")));
          buildable = true;
        };
      };
      benchmarks = {
        "symantic-parser-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."symantic-parser" or (errorHandler.buildDepError "symantic-parser"))
            (hsPkgs."symantic-parser".components.sublibs.parsers or (errorHandler.buildDepError "symantic-parser:parsers"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }