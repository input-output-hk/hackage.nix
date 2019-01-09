{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "comptrans"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "James Koppel";
      author = "James Koppel";
      homepage = "https://github.com/jkoppel/comptrans";
      url = "";
      synopsis = "Automatically converting ASTs into compositional data types";
      description = "Template Haskell for converting an AST for a language written using normal\nalgebraic data types into ones written using multi-sorted compositional data types\n(`Data.Comp.Multi` from the `compdata` library) so that you can use generic and modular operators\non it. You might need to add additional constructors that can e.g.: convert a `(Term e Foo)` into a\n`(Term e [Foo])`.\n\nThe sCource files have comments showing example output for a simple language. See the examples directory\nfor an extended example of generating a compositional data type for the entire Java language, with labelled variants\nas well as variants where an entire project of source files can be treated as a single AST -- and you can use the same operations\non all of them!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.compdata)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.template-haskell)
          (hsPkgs.th-expand-syns)
          (hsPkgs.ghc-prim)
          (hsPkgs.deepseq)
          (hsPkgs.deepseq-generics)
          ];
        };
      };
    }