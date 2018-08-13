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
      specVersion = "1.10";
      identifier = {
        name = "parsec-parsers";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/parsec-parsers/";
      url = "";
      synopsis = "Parsing instances for Parsec";
      description = "This permits @parsec@ parsers to be written using the combinators from the @parsers@ package.";
      buildType = "Custom";
    };
    components = {
      "parsec-parsers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsers)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }