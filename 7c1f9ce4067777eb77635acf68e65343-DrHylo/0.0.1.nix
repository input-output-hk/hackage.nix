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
        name = "DrHylo";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hugo Pacheco <hpacheco@di.uminho.pt>";
      author = "Alcino Cunha <alcino@di.uminho.pt>, Hugo Pacheco <hpacheco@di.uminho.pt>";
      homepage = "http://haskell.di.uminho.pt/wiki/DrHylo";
      url = "";
      synopsis = "A tool for deriving hylomorphisms";
      description = "DrHylo is a tool for deriving hylomorphisms from a restricted Haskell syntax. It is based on the algorithm first presented in the paper Deriving Structural Hylomorphisms From Recursive Definitions at ICFP'96 by Hu, Iwasaki, and Takeichi.\nThe generated code can be run with Pointless Haskell (<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/pointless-haskell>), allowing the visualization of the recursion trees of Haskell functions.";
      buildType = "Simple";
    };
    components = {
      "DrHylo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pointless-haskell)
          (hsPkgs.mtl)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.syb)
        ];
      };
      exes = {
        "DrHylo" = {
          depends  = [
            (hsPkgs.containers)
          ] ++ (if _flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.array)
              (hsPkgs.pretty)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }