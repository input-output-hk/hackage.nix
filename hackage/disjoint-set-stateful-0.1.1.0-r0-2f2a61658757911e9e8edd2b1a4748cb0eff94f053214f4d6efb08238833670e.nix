{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "disjoint-set-stateful";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "https://github.com/clintonmead/disjoint-set-stateful";
      url = "";
      synopsis = "Monadic disjoint set";
      description = "This package includes a monadic disjoint int set datatype, which can also be \"frozen\" into a non-monadic queriable\ndisjoint set (which however can not be modified).\n\nIn the future, I will write a wrapper that allows disjoint sets for all datatypes.\n\nOne common use case for disjoint sets is for creating equivalence classes.";
      buildType = "Simple";
    };
    components = {
      "disjoint-set-stateful" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          (hsPkgs.ref-tf)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.primitive)
            (hsPkgs.ref-tf)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }