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
      identifier = { name = "language-lua"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "omeragacan@gmail.com";
      author = "Ömer Sinan Ağacan";
      homepage = "http://github.com/osa1/language-lua";
      url = "";
      synopsis = "Lua parser and pretty-printer";
      description = "Lua 5.2 lexer, parser and pretty-printer.\n\nChangelog:\n\n\\0.6.2:\n\n- `base` dependency is relaxed for GHC 7.10. Note that alex version\n>3.1.4 is required to compile with GHC 7.10.\n\n\\0.6.1:\n\n- `Generic` and `NFData` instances are implemented for syntax trees.\n\n\\0.6.0:\n\n- Fixed a long string literal parsing bug which was causing long strings to\nterminate at wrong points.\n\n- \\\\z escape characters in strings are now scanned and interpreted correctly.\n\n- This is first version that parses all of Lua 5.2.2 test suite.\n\n\\0.5.0:\n\n- 2-years-old operator parsing bug fixed. Chained/nested operator\nexpressions are now properly parsed.\n\n\\0.4.6:\n\n- Language.Lua.Annotated.Lexer module exposed.\n\n\\0.4.5:\n\n- Fixed a bug that made lexer accept invalid escape sequences in strings.\n\n- Strings are now interpreted \\-\\- string \"\\\\n\" is now parsed to Haskell\nstring \"\\\\n\", instead of \"\\\\\\\\n\".\n\n- Fixed character code parsing.\n\n\\0.4.4:\n\n- Printer now takes operator precedences into account while printing\n`Binop` and `Unop` expressions and prints parenthesis as necessary.\n\n- Printer now does not put line break in `Binop` expressions.\n\n\\0.4.3:\n\n- `Data` and `Typeable` instances are implemented for syntax tree.\n\n\\0.4.2:\n\n- More tweaks in pretty printer.\n\n- Started using 2 spaces for indentation(instead of 4 as before).\n\n\\0.4.1:\n\n- Some tweaks in pretty-printer.\n\n\\0.4.0:\n\n- `Table` and `FunDef` nodes are removed from simplified syntax.\n\n\\0.3.1:\n\n- Fixed incorrectly exported name `exp` in `Language.Lua.Parser` module.\n\n\\0.3.0:\n\n- Added non-annotated syntax to make code-generation easier.\n\n\\0.2.3:\n\n- Minor internal changes.\n\n\\0.2.2:\n\n- Some tweaks in pretty-printer.\n\n\\0.2.0:\n\n- Syntax tree is annotated. All parsers(`parseText`, `parseFile`) annotate\nresulting tree with source positions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."language-lua" or (errorHandler.buildDepError "language-lua"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."language-lua" or (errorHandler.buildDepError "language-lua"))
          ];
          buildable = true;
        };
      };
    };
  }