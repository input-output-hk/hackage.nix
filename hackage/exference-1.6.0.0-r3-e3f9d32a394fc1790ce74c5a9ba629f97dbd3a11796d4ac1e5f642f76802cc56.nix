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
      build-executables = true;
      linknodes = false;
      buildsearchtree = false;
      exference-dev = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "exference"; version = "1.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Spitzner <lsp@informatik.uni-kiel.de>";
      author = "Lennart Spitzner";
      homepage = "https://github.com/lspitzner/exference";
      url = "";
      synopsis = "Tool to search/generate (haskell) expressions with a given type";
      description = "Type inference takes an expression and tells you its type. This process\ncan be inversed: We recursively create random expression trees while checking\nthat they -so far- match a given input type. At each step we do the backwards\nstep of the inference algorithm step. If you are lucky, this search\nyields one or more expressions.\n\nDjinn is a similar tool that guarantees to always terminate. But the\ncost of that property is that Djinn does not properly handle polymorphic\nqueries - and those are the interesting ones, really :)\n\nExference supports type classes, handles undeclared types well\n(Foo -> Foo yields id for unknown Foo), does _not_ check kinds,\ncan pattern-match on newtypes, supports RankNTypes.\n\nExference reads an environment of function types, data types, type classes\nand instances. The user can add to this environment, but keep in mind that\neach addition enlarges the search space.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."deepseq-generics" or (errorHandler.buildDepError "deepseq-generics"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."pqueue" or (errorHandler.buildDepError "pqueue"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."hood" or (errorHandler.buildDepError "hood"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."multistate" or (errorHandler.buildDepError "multistate"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "exference" = {
          depends = (pkgs.lib).optionals (flags.build-executables) [
            (hsPkgs."exference" or (errorHandler.buildDepError "exference"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."data-pprint" or (errorHandler.buildDepError "data-pprint"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hood" or (errorHandler.buildDepError "hood"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."multistate" or (errorHandler.buildDepError "multistate"))
            ];
          buildable = if flags.build-executables then true else false;
          };
        };
      };
    }