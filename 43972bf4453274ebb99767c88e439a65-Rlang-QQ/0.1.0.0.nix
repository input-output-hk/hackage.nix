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
        name = "Rlang-QQ";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Vogt <vogt.adam@gmail.com>";
      author = "Adam Vogt <vogt.adam@gmail.com>";
      homepage = "http://code.haskell.org/~aavogt/Rlang-QQ";
      url = "";
      synopsis = "quasiquoter for inline-R code";
      description = "This quasiquoter calls R (<http://www.r-project.org/>) from ghc.\nVariables from the haskell-side are passed in, and\nvariables created (or modified) are returned as the value\nof the quasiquote.";
      buildType = "Simple";
    };
    components = {
      "Rlang-QQ" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.trifecta)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.syb)
          (hsPkgs.mtl)
          (hsPkgs.MaybeT)
          (hsPkgs.binary)
          (hsPkgs.vector)
          (hsPkgs.HList)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.array)
          (hsPkgs.zlib)
          (hsPkgs.repa)
          (hsPkgs.haskell-src-meta)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }