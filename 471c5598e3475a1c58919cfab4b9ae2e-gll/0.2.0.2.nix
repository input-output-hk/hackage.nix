{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "gll";
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ltvanbinsbergen@acm.org";
      author = "L. Thomas van Binsbergen";
      homepage = "";
      url = "";
      synopsis = "GLL parser with simple combinator interface";
      description = "GLL is a parser combinator library for writing generalised parsers.\nThe parsers can correspond to arbitrary context-free grammar, accepting\nboth non-determinism and (left-) recursion.\nThe underlying parsing algorithm is GLL (Scott and Johnstone 2013).\n\nThe library provides an interface in Control.Applicative style (although no\ninstance of Applicative is given).\nUsers can add arbitrary semantic to the parser.\n\nThere are 4 top-level functions: parse, parseString, parseWithOptions\nand parseStringWithOptions. They all return a list of semantic results,\none for each derivation. In the case that infinite derivations are possible\nonly 'good parse trees' are accepted (Ridge 2014).\n\nFunction parse relies on a builtin Token datatype. User-defined token-types\nare currently not supported. parseString enables parsing character strings.\nThe user is granted GLL.Combinators.Options to specify certain disambiguation\nrules.\n\nGLL.Combinators.MemInterface is a memoised version of the library.\nParsers are no longer pure functions and must be built inside the IO monad,\nproviding fresh memo-tables to each memo'ed non-terminal.\n\nSee UnitTests and MemTests for examples of using both version of\nthe library.";
      buildType = "Simple";
    };
    components = {
      "gll" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.TypeCompose)
        ];
      };
    };
  }