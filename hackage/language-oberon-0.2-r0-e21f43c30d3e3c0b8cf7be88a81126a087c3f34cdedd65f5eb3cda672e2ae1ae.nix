let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."parsers" or (buildDepError "parsers"))
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."rank2classes" or (buildDepError "rank2classes"))
          (hsPkgs."grammatical-parsers" or (buildDepError "grammatical-parsers"))
          ];
        buildable = true;
        };
      exes = {
        "parse" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."repr-tree-syb" or (buildDepError "repr-tree-syb"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."rank2classes" or (buildDepError "rank2classes"))
            (hsPkgs."grammatical-parsers" or (buildDepError "grammatical-parsers"))
            (hsPkgs."language-oberon" or (buildDepError "language-oberon"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."language-oberon" or (buildDepError "language-oberon"))
            ];
          buildable = true;
          };
        };
      };
    }