{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
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
      identifier = {
        name = "exference";
        version = "1.6.0.0";
      };
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
          (hsPkgs.base)
          (hsPkgs.base-orphans)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.deepseq)
          (hsPkgs.deepseq-generics)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.pqueue)
          (hsPkgs.mmorph)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.vector)
          (hsPkgs.either)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.hood)
          (hsPkgs.process)
          (hsPkgs.parsec)
          (hsPkgs.directory)
          (hsPkgs.bifunctors)
          (hsPkgs.safe)
          (hsPkgs.lens)
          (hsPkgs.split)
          (hsPkgs.multistate)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "exference" = {
          depends = pkgs.lib.optionals (flags.build-executables) [
            (hsPkgs.exference)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.data-pprint)
            (hsPkgs.deepseq)
            (hsPkgs.hood)
            (hsPkgs.process)
            (hsPkgs.either)
            (hsPkgs.multistate)
          ];
        };
      };
    };
  }