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
      specVersion = "1.2";
      identifier = {
        name = "hlcm";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexandre.Termier@imag.fr";
      author = "Alexandre Termier";
      homepage = "http://membres-liglab.imag.fr/termier/HLCM/hlcm.html";
      url = "";
      synopsis = "Fast algorithm for mining closed frequent itemsets";
      description = "Closed frequent itemsets are patterns that occur more\nthan a defined threshold in a transactional database.\nThis program is a Haskell implementation of the LCM2\nalgorithm by Takeaki Uno and Hiroki Arimura, which\nis the fastest algorithm for this task.\nThis implementation can make use of several threads.";
      buildType = "Simple";
    };
    components = {
      "hlcm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.haskell98)
          (hsPkgs.array)
          (hsPkgs.parallel)
        ];
      };
      exes = {
        "hlcm" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.haskell98)
            (hsPkgs.array)
            (hsPkgs.parallel)
            (hsPkgs.containers)
            (hsPkgs.bytestring-csv)
          ];
        };
        "benchHLCM" = {};
      };
    };
  }