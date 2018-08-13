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
        name = "language-ecmascript";
        version = "0.13";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2012 Brown University, (c) 2008-2010 Claudiu Saftoiu,\n(c) 2012-2013 Stevens Institute of Technology";
      maintainer = "Andrey Chudnov <oss@chudnov.com>";
      author = "Andrey Chudnov, Arjun Guha, Spiridon Aristides Eliopoulos,\nJoe Gibbs Politz, Claudiu Saftoiu";
      homepage = "http://github.com/jswebtools/language-ecmascript";
      url = "";
      synopsis = "JavaScript analysis tools";
      description = "Some tools for working with ECMAScript 3 (popularly known as JavaScript).\nIncludes a parser, pretty-printer, and basic building blocks for more\nsophisticated tools.\nThis package supercedes package WebBits.";
      buildType = "Simple";
    };
    components = {
      "language-ecmascript" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.syb)
          (hsPkgs.uniplate)
          (hsPkgs.data-default)
          (hsPkgs.QuickCheck)
          (hsPkgs.template-haskell)
          (hsPkgs.charset)
        ];
      };
      tests = {
        "unittest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.syb)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.data-default)
            (hsPkgs.QuickCheck)
            (hsPkgs.charset)
          ];
        };
        "prettytest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.syb)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.data-default)
            (hsPkgs.QuickCheck)
            (hsPkgs.uniplate)
          ];
        };
      };
    };
  }