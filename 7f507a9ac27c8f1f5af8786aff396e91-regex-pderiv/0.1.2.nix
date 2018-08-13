{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      base4 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "regex-pderiv";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010-2012, Kenny Zhuo Ming Lu and Martin Sulzmann";
      maintainer = "luzhuomi@gmail.com, martin.sulzmann@gmail.com";
      author = "Kenny Zhuo Ming Lu and Martin Sulzmann";
      homepage = "http://code.google.com/p/xhaskell-library/";
      url = "http://darcs.haskell.org/packages/regex-unstable/xhaskell-library";
      synopsis = "Replaces/Enhances Text.Regex. Implementing regular expression matching using Antimirov's partial derivatives. The svn source also shipped with two other referential implementations, e.g. Thomspon NFA and Glushkov NFA. For more detail please check out http://code.google.com/p/xhaskell-library/";
      description = "Regex algorithm implementation using partial derivatives";
      buildType = "Simple";
    };
    components = {
      "regex-pderiv" = {
        depends  = [
          (hsPkgs.regex-base)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.bitset)
          (hsPkgs.parallel)
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }