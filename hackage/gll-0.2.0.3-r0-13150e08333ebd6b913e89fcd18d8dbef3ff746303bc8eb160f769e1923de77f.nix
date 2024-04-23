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
      specVersion = "1.8";
      identifier = { name = "gll"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ltvanbinsbergen@acm.org";
      author = "L. Thomas van Binsbergen";
      homepage = "";
      url = "";
      synopsis = "GLL parser with simple combinator interface ";
      description = "GLL is a parser combinator library for writing generalised parsers.\nThe user can write parsers for arbitrary context-free grammars, including\nboth non-determinism and all forms of left and right-recursion.\nThe underlying parsing algorithm is GLL (Scott and Johnstone 2013).\n\nThe library provides an interface in 'Control.Applicative' style:\nit uses the combinators '<*>', '<|>', '<$>' and derivations.\nWith '<$>' arbitrary semantic actions are added to the parser.\n\nFour functions can be used to run a parser: 'parse', 'parseString',\n'parseWithOptions' and 'parseStringWithOptions'.\nFunction 'parse' relies on the builtin 'Token' datatype, receiving a list of\n'Token' as an input string. User-defined token-types are currently not supported.\nFunction *parseString* enables parsing character-level parsing.\nThe result of aparse is a list of semantic results, one result for each derivation.\nTo avoid infinite recursion, only 'good parse trees' are considered (Ridge 2014).\nTo limit the number of accepted derivation, and therefore avoiding potential\nexponential blow-up, 'GLL.Combinators.Options' are available to specify certain\ndisambiguation rules.\n\n'GLL.Combinators.MemInterface' is a memoised version of the library.\nMemoisation is used to speed up the process of applying semantic actions,\nit is not necessary for generalised parsing:\n'GLL.Combinators.Interface' and 'GLL.Combinators.MemInterface' are\nequally general.\nIn the memoised version, parsers are no longer pure functions and must be\ndeveloped inside the IO monad.\n\nExamples can be found in the 'GLL.Combinators.Test' directory.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."TypeCompose" or (errorHandler.buildDepError "TypeCompose"))
        ];
        buildable = true;
      };
    };
  }