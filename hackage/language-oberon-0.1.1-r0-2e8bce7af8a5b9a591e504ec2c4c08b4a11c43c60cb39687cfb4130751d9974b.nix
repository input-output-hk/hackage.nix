{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "language-oberon";
        version = "0.1.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "blamario@protonmail.com";
      author = "Mario Blažević";
      homepage = "https://github.com/blamario/language-oberon";
      url = "";
      synopsis = "Parser and pretty-printer for the Oberon programming language";
      description = "The library and the executable support both the original Oberon and the Oberon-2 programming language, as described\nin the respective <http://www.ethoberon.ethz.ch/compiler/index.html#report language reports>.\n\nThe grammars in \"Language.Oberon.Grammar\" attempt to follow the language grammars from the reports, while\ngenerating a semantically meaningful abstract syntax tree; the latter is defined in \"Language.Oberon.AST\". As the\ngrammars are ambiguous, it is necessary to resolve the ambiguities after parsing all Oberon modules in use.\n\"Language.Oberon.Resolver\" provides this functionality. Only after the ambiguity resolution can the abstract syntax\ntree be pretty-printed using the instances from \"Language.Oberon.Pretty\".\n\nThe original purpose for the library was to be a test of the underlying\n<http://hackage.haskell.org/package/grammatical-parsers grammatical-parsers> library. The experiment succeeded, so    the package can be used in practice.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.parsers)
          (hsPkgs.prettyprinter)
          (hsPkgs.either)
          (hsPkgs.rank2classes)
          (hsPkgs.grammatical-parsers)
        ];
      };
      exes = {
        "parse" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.either)
            (hsPkgs.containers)
            (hsPkgs.repr-tree-syb)
            (hsPkgs.filepath)
            (hsPkgs.prettyprinter)
            (hsPkgs.rank2classes)
            (hsPkgs.grammatical-parsers)
            (hsPkgs.language-oberon)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.either)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.language-oberon)
          ];
        };
      };
    };
  }