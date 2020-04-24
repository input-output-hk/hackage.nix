{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "language-oberon"; version = "0.2"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."rank2classes" or ((hsPkgs.pkgs-errors).buildDepError "rank2classes"))
          (hsPkgs."grammatical-parsers" or ((hsPkgs.pkgs-errors).buildDepError "grammatical-parsers"))
          ];
        buildable = true;
        };
      exes = {
        "parse" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."repr-tree-syb" or ((hsPkgs.pkgs-errors).buildDepError "repr-tree-syb"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."rank2classes" or ((hsPkgs.pkgs-errors).buildDepError "rank2classes"))
            (hsPkgs."grammatical-parsers" or ((hsPkgs.pkgs-errors).buildDepError "grammatical-parsers"))
            (hsPkgs."language-oberon" or ((hsPkgs.pkgs-errors).buildDepError "language-oberon"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."language-oberon" or ((hsPkgs.pkgs-errors).buildDepError "language-oberon"))
            ];
          buildable = true;
          };
        };
      };
    }