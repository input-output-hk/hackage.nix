{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Learning";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Bogdan Penkovsky";
      maintainer = "dev at penkovsky [dot] com";
      author = "Bogdan Penkovsky";
      homepage = "https://github.com/masterdezign/Learning#readme";
      url = "";
      synopsis = "Most frequently used machine learning tools";
      description = "Please see the README on Github at <https://github.com/masterdezign/Learning#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hmatrix)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "Learning-exe" = {
          depends  = [
            (hsPkgs.Learning)
            (hsPkgs.base)
            (hsPkgs.hmatrix)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "Learning-test" = {
          depends  = [
            (hsPkgs.Learning)
            (hsPkgs.base)
            (hsPkgs.hmatrix)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }