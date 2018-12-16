{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { openblas = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hblas";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "carter at wellposed dot com";
      author = "Carter Tazio Schonwald";
      homepage = "";
      url = "";
      synopsis = "Human friendly BLAS and Lapack bindings for Haskell.";
      description = "User friendly, simple bindings to BLAS and Lapack. Easy to extend and use.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.storable-complex)
          (hsPkgs.vector)
          (hsPkgs.primitive)
        ];
        libs = (pkgs.lib.optionals (flags.openblas) [
          (pkgs."openblas")
          (pkgs."pthread")
        ] ++ pkgs.lib.optionals (system.isWindows && !flags.openblas) [
          (pkgs."blas")
          (pkgs."lapack")
        ]) ++ pkgs.lib.optionals (!system.isWindows && !system.isOsx && !flags.openblas) [
          (pkgs."blas")
          (pkgs."lapack")
        ];
        frameworks = pkgs.lib.optional (system.isOsx && !flags.openblas) (pkgs."Accelerate");
      };
      tests = {
        "unit-testsuite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.vector)
            (hsPkgs.hblas)
          ];
        };
      };
    };
  }