{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build_examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ipopt-hs";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Vogt <vogt.adam@gmail.com>";
        author = "Adam Vogt <vogt.adam@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "haskell binding to ipopt including automatic differentiation";
        description = "a haskell binding to the nonlinear programming solver ipopt\n<http://projects.coin-or.org/Ipopt>\n\n[@installation@]\nneeds ipopt installed: For example if you have a\n`/usr/include/coin/IpStdCInterface.h` from your ipopt installation,\nuse:\n\n> cabal install ipopt-hs --extra-include-dirs=/usr/include/coin\n\nA embedded language, similar to the one provided by glpk-hs, is\ndefined in \"Ipopt.NLP\". The goal is to define problems at a level\nsimilar to other \"algebraic modeling languages\", but retain some\nof the safety and flexibility available in haskell.\n\nRefer to @examples/Test1.hs@ for an example where the derivatives\nare computed by hand, @Test2.hs@ for the use of\n'createIpoptProblemAD' and @Test3.hs@ for the highest level.\n\nCurrent limitations include:\n\n* copying in every iteration happens between between\n\"Data.Vector.Storable\" and \"Data.Vector\" might be avoidable\nsomehow.  Currently it is done because AD needs a Traversable\nstructure, but Storable vectors are not traversable.\n\n* sparseness of derivatives isn't used to decide which way to calculate (forward vs. backward mode)\n\n* probably doesn't work if @IpStdCInterface.h@ has Number =/= 'CDouble'\n\n* no binding to SetIntermediateCallback\n\n* garbage collection of 'IpProblem' won't free C-side resources";
        buildType = "Simple";
      };
      components = {
        ipopt-hs = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.ad
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.lens
            hsPkgs.ansi-wl-pprint
            hsPkgs.vector-space
          ];
          pkgconfig = [
            pkgconfPkgs.ipopt
          ];
          build-tools = [ hsPkgs.c2hs ];
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
            ];
          };
        };
      };
    }