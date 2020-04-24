{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      description = "Type inference takes an expression and tells you its type. This process\ncan be inversed: We recursively create random expression trees while checking\nthat they -so far- match a given input type. At each step we do the backwards\nstep of the inference algorithm step. If you are lucky, this search\nyields one or more expressions.\nDjinn is a similar tool that guarantees to always terminate. But the\ncost of that property is that Djinn does not properly handle polymorphic\nqueries - and those are the interesting ones, really :)\nExference supports type classes, handles undeclared types well\n(Foo -> Foo yields id for unknown Foo), does _not_ check kinds,\ncan pattern-match on newtypes, supports RankNTypes.\nExference reads an environment of function types, data types, type classes\nand instances. The user can add to this environment, but keep in mind that\neach addition enlarges the search space.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-orphans" or ((hsPkgs.pkgs-errors).buildDepError "base-orphans"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."deepseq-generics" or ((hsPkgs.pkgs-errors).buildDepError "deepseq-generics"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."pqueue" or ((hsPkgs.pkgs-errors).buildDepError "pqueue"))
          (hsPkgs."mmorph" or ((hsPkgs.pkgs-errors).buildDepError "mmorph"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."hood" or ((hsPkgs.pkgs-errors).buildDepError "hood"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."multistate" or ((hsPkgs.pkgs-errors).buildDepError "multistate"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "exference" = {
          depends = (pkgs.lib).optionals (flags.build-executables) [
            (hsPkgs."exference" or ((hsPkgs.pkgs-errors).buildDepError "exference"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."data-pprint" or ((hsPkgs.pkgs-errors).buildDepError "data-pprint"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hood" or ((hsPkgs.pkgs-errors).buildDepError "hood"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."multistate" or ((hsPkgs.pkgs-errors).buildDepError "multistate"))
            ];
          buildable = if flags.build-executables then true else false;
          };
        };
      };
    }