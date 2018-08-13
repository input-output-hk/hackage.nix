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
      specVersion = "1.10";
      identifier = {
        name = "permutations";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Permutations of finite sets";
      description = "";
      buildType = "Simple";
    };
    components = {
      "permutations" = {
        depends  = [
          (hsPkgs.Fin)
          (hsPkgs.alg)
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.natural-induction)
          (hsPkgs.peano)
          (hsPkgs.universe-base)
          (hsPkgs.util)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.Fin)
            (hsPkgs.alg)
            (hsPkgs.base)
            (hsPkgs.natural-induction)
            (hsPkgs.peano)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.universe-base)
            (hsPkgs.permutations)
          ];
        };
      };
    };
  }