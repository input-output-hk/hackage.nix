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
        name = "shuffle";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group";
      maintainer = "uhc-developers@lists.science.uu.nl";
      author = "UHC Team";
      homepage = "https://github.com/UU-ComputerScience/shuffle";
      url = "";
      synopsis = "Shuffle tool for UHC";
      description = "Shuffle tool used by UHC (Utrecht Haskell Compiler)";
      buildType = "Custom";
    };
    components = {
      "shuffle" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.array)
          (hsPkgs.uulib)
          (hsPkgs.uuagc)
          (hsPkgs.uuagc-cabal)
          (hsPkgs.uhc-util)
          (hsPkgs.Cabal)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "shuffle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.shuffle)
          ];
        };
      };
    };
  }