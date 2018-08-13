{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bytestringreadp";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2007-2007, Gracjan Polak";
      maintainer = "Gracjan Polak <gracjanpolak@gmail.com>";
      author = "Gracjan Polak <gracjanpolak@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A ReadP style parser library for ByteString";
      description = "This is a library of parser combinators, originally written by Koen Claessen.\nIt parses all alternatives in parallel, so it never keeps hold of\nthe beginning of the input string, a common source of space leaks with\nother parsers.  The '(+++)' choice combinator is genuinely commutative;\nit makes no difference which branch is \\\"shorter\\\".\n\nAdapted to use Data.ByteString by Gracjan Polak. Designed as a drop-in\nreplacement for Text.ParserCombinators.ReadP.";
      buildType = "Simple";
    };
    components = {
      "bytestringreadp" = {
        depends  = if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ]
          else [ (hsPkgs.base) ];
      };
    };
  }