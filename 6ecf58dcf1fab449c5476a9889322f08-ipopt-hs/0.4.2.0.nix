{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build_examples = false;
      nlopt = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ipopt-hs";
          version = "0.4.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Vogt <vogt.adam@gmail.com>";
        author = "Adam Vogt <vogt.adam@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "haskell binding to ipopt and nlopt including automatic differentiation";
        description = "a haskell binding to the nonlinear programming solver\n<http://projects.coin-or.org/Ipopt Ipopt>. Bindings to\n<http://ab-initio.mit.edu/wiki/index.php/NLopt NLopt> are\nalso included.\n\n[@installation@]\nneeds the c library ipopt installed. Also by default a binding to\nnlopt is included. Nlopt by default does not include shared libraries,\nwhich seems to be needed to run things from ghci (ie. you need to\n@./configure --enable-shared@ when building nlopt).\n\nA embedded language, similar to the one provided by glpk-hs, is\ndefined in \"Ipopt.NLP\". The goal is to define problems at a level\nsimilar to other \"algebraic modeling languages\", but retain some\nof the safety and flexibility available in haskell. There is some\noverhead <http://code.haskell.org/~aavogt/ipopt-hs/examples/bench.html>\nbut perhaps it is negligible for your uses.\n\nCurrent limitations include:\n\n* copying in every iteration happens between between\n\"Data.Vector.Storable\" and \"Data.Vector\" might be avoidable\nsomehow.  Currently it is done because AD needs a Traversable\nstructure, but Storable vectors are not traversable.\n\n* sparseness of derivatives isn't used\n\n* no binding to sensitivity parts as-implemented in ipopt";
        buildType = "Simple";
      };
      components = {
        ipopt-hs = {
          depends  = [
            hsPkgs.base
            hsPkgs.ad
            hsPkgs.ansi-wl-pprint
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.uu-parsinglib
            hsPkgs.vector
            hsPkgs.vector-space
          ];
          pkgconfig = [
            pkgconfPkgs.ipopt
          ] ++ pkgs.lib.optional _flags.nlopt pkgconfPkgs.nlopt;
        };
        exes = {
          ipopt-hs_Tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.ipopt-hs
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.ansi-wl-pprint
              hsPkgs.Rlang-QQ
              hsPkgs.vector-space
              hsPkgs.splines
              hsPkgs.ad
              hsPkgs.criterion
              hsPkgs.random-shuffle
              hsPkgs.linear
            ];
          };
        };
      };
    }