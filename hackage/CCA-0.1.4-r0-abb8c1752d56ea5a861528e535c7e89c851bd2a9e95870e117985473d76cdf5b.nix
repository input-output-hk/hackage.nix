{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "CCA";
        version = "0.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul H Liu <paul@thev.net>";
      author = "Paul H Liu <paul@thev.net>, Eric Cheng <eric.cheng@aya.yale.edu>";
      homepage = "not available";
      url = "";
      synopsis = "preprocessor and library for Causal Commutative Arrows (CCA)";
      description = "A library that provides normalization support via Template\nHaskell for CCAs, and a modified preprocessor based on\nRoss Paterson's arrowp that reads Haskell with arrow notation\nand outputs Haskell 98 + Template Haskell sources for\nuse with CCA library.";
      buildType = "Simple";
    };
    components = {
      "CCA" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "6.10") [
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.ghc-prim)
        ];
      };
      exes = {
        "ccap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.haskell-src)
          ];
        };
      };
    };
  }