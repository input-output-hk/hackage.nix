{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "pappy";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Bryan Ford";
      homepage = "http://pdos.csail.mit.edu/~baford/packrat/thesis/";
      url = "";
      synopsis = "Packrat parsing; linear-time parsers for grammars in TDPL.";
      description = "Packrat parsing is a novel and practical method for implementing\nlinear-time parsers for grammars defined in Top-Down Parsing\nLanguage (TDPL). While TDPL was originally created as a formal\nmodel for top-down parsers with backtracking capability, this\nthesis extends TDPL into a powerful general-purpose notation for\ndescribing language syntax, providing a compelling alternative to\ntraditional context-free grammars (CFGs). Common syntactic idioms\nthat cannot be represented concisely in a CFG are easily\nexpressed in TDPL, such as longest-match disambiguation and\n\"syntactic predicates,\" making it possible to describe the\ncomplete lexical and grammatical syntax of a practical\nprogramming language in a single TDPL grammar.\n\nPackrat parsing is an adaptation of a 30-year-old tabular parsing\nalgorithm that was never put into practice until now. A packrat\nparser can recognize any string defined by a TDPL grammar in\nlinear time, providing the power and flexibility of a\nbacktracking recursive descent parser without the attendant risk\nof exponential parse time. A packrat parser can recognize any\nLL(k) or LR(k) language, as well as many languages requiring\nunlimited lookahead that cannot be parsed by shift/reduce\nparsers. Packrat parsing also provides better composition\nproperties than LL/LR parsing, making it more suitable for\ndynamic or extensible languages. The primary disadvantage of\npackrat parsing is its storage cost, which is a constant multiple\nof the total input size rather than being proportional to the\nnesting depth of the syntactic constructs appearing in the input.\n\nMonadic combinators and lazy evaluation enable elegant and direct\nimplementations of packrat parsers in recent functional\nprogramming languages such as Haskell. Three different packrat\nparsers for the Java language are presented here, demonstrating\nthe construction of packrat parsers in Haskell using primitive\npattern matching, using monadic combinators, and by automatic\ngeneration from a declarative parser specification. The prototype\npackrat parser generator developed for the third case itself uses\na packrat parser to read its parser specifications, and supports\nfull TDPL notation extended with \"semantic predicates,\" allowing\nparsing decisions to depend on the semantic values of other\nsyntactic entities. Experimental results show that all of these\npackrat parsers run reliably in linear time, efficiently support\n\"scannerless\" parsing with integrated lexical analysis, and\nprovide the user-friendly error-handling facilities necessary in\npractical applications.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pappy" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }