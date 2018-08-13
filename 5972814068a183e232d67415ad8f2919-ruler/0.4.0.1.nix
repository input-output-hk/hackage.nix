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
        name = "ruler";
        version = "0.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group";
      maintainer = "uhc-developers@lists.science.uu.nl";
      author = "UHC Team";
      homepage = "https://github.com/UU-ComputerScience/ruler";
      url = "";
      synopsis = "Ruler tool for UHC";
      description = "Ruler tool used by UHC (Utrecht Haskell Compiler)";
      buildType = "Custom";
    };
    components = {
      exes = {
        "ruler" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.uulib)
            (hsPkgs.mtl)
            (hsPkgs.uhc-util)
            (hsPkgs.uuagc)
            (hsPkgs.uuagc-cabal)
            (hsPkgs.shuffle)
          ];
        };
      };
    };
  }