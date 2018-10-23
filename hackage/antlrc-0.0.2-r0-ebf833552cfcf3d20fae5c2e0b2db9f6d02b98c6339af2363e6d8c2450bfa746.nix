{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.4";
      identifier = {
        name = "antlrc";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Mark Wright 2010-2011. All rights reserved.";
      maintainer = "markwright@internode.on.net";
      author = "Mark Wright";
      homepage = "https://github.com/markwright/antlrc";
      url = "";
      synopsis = "Haskell binding to the ANTLR parser generator C runtime library.";
      description = "ANTLR is a LL(*) parser generator that supports semantic predicates,\nsyntax predicates and backtracking.  antlrc provides a Haskell interface\nto the ANTLR C runtime.  ANTLR generates the lexer and/or parser C\ncode, which can call Haskell code for things such as: semantic predicates\nwhich may look up entries in the symbol table, creating symbol table entries,\ntype checking, creating abstract syntax trees, etc.\n\nThe C source code for the lexer and/or parser are generated from the\nANTLR grammar file, which by convention has a .g filename extension.\n\nThe generated C files can be compiled as C or C++.\n\nThe main entry point to the program can be written in C or C++, which\ncalls the generated parser and lexer.  The parser can make calls to\nHaskell to build the AST and symbol table, and to implement\ndis-ambiguating semantic predicates if necessary (for context sensitive\nlanguages).\n\nThe ANTLR parser generator is written in Java.  It is necessary to use\nthe same ANTLR parser generator version as the ANTLR C runtime version.\nantlrc is tested with ANTLR 3.2 and libantlr3c 3.2.\n\nIn addition to creating the GrammarLexer.c and GrammarParser.c files,\nthe antlr parser generator creates a Grammar.tokens file which contains\na list of lexer token identifier numbers and any associated name that is\nis specified in the tokens section of the Grammar.g file.  The\nantlrcmkenums is run specifying the input Grammar.tokens file, and generates\na GrammarTokens.h C/C++ header file containing an enum with enum members for\nthose tokens that have user specified names.  This enum is then processed by\nc2hs to create a Haskell enum for the token identifiers.\n\nExamples are provided on github:\n\n<https://github.com/markwright/antlrc-examples>\n\nDocumentation for the ANTLR C runtime library is at:\n\n<http://www.antlr.org/wiki/display/ANTLR3/ANTLR3+Code+Generation+-+C>\n\nDocumentation for the ANTLR parser generator is at:\n\n<http://www.antlr.org/wiki/display/ANTLR3/ANTLR+v3+documentation>\n";
      buildType = "Simple";
    };
    components = {
      "antlrc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
        ];
        libs = [ (pkgs."antlr3c") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      exes = {
        "antlrcmkenums" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.enumerator)
            (hsPkgs.haskell98)
            (hsPkgs.regex-posix)
          ];
        };
      };
    };
  }