{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      build_examples = false;
      nlopt = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ipopt-hs";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Vogt <vogt.adam@gmail.com>";
      author = "Adam Vogt <vogt.adam@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "haskell binding to ipopt including automatic differentiation";
      description = "a haskell binding to the nonlinear programming solver ipopt\n<http://projects.coin-or.org/Ipopt>\n\n[@installation@]\nneeds ipopt installed: For example if you have a\n`/usr/include/coin/IpStdCInterface.h` from your ipopt installation,\nuse:\n\n> cabal install ipopt-hs --extra-include-dirs=/usr/include/coin\n\nA embedded language, similar to the one provided by glpk-hs, is\ndefined in \"Ipopt.NLP\". The goal is to define problems at a level\nsimilar to other \"algebraic modeling languages\", but retain some\nof the safety and flexibility available in haskell. There is some\noverhead <http://code.haskell.org/~aavogt/ipopt-hs/examples/bench.html>\nbut at least on the small 4-variable constrained optimization\nproblem.\n\nCurrent limitations include:\n\n* copying in every iteration happens between between\n\"Data.Vector.Storable\" and \"Data.Vector\" might be avoidable\nsomehow.  Currently it is done because AD needs a Traversable\nstructure, but Storable vectors are not traversable.\n\n* sparseness of derivatives isn't used\n\n* no binding to SetIntermediateCallback";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ad)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.uu-parsinglib)
          (hsPkgs.vector)
          (hsPkgs.vector-space)
        ];
        pkgconfig = [
          (pkgconfPkgs.ipopt)
        ] ++ pkgs.lib.optional (flags.nlopt) (pkgconfPkgs.nlopt);
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      exes = {
        "ipopt-hs_Tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.ipopt-hs)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.Rlang-QQ)
            (hsPkgs.vector-space)
            (hsPkgs.splines)
            (hsPkgs.ad)
            (hsPkgs.criterion)
            (hsPkgs.random-shuffle)
            (hsPkgs.optimization)
            (hsPkgs.linear)
          ];
        };
      };
    };
  }