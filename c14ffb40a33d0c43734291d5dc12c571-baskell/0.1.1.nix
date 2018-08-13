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
      specVersion = "0";
      identifier = {
        name = "baskell";
        version = "0.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "2004-2005, Bernard Pope";
      maintainer = "Bernard Pope <bjpop@cs.mu.oz.au>";
      author = "Bernard Pope";
      homepage = "http://www.cs.mu.oz.au/~bjpop/code.html";
      url = "";
      synopsis = "An interpreter for a small functional language";
      description = "Baskell is an interpreter for a small functional\nlanguage. It supports type inference, lazy\nevaluation and strict evaluation.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "baskell" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.pretty)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }