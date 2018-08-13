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
      specVersion = "1.18";
      identifier = {
        name = "hmatrix-sundials";
        version = "0.19.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Dominic Steinitz 2018, Novadiscovery 2018";
      maintainer = "dominic@steinitz.org";
      author = "Dominic Steinitz";
      homepage = "https://github.com/idontgetoutmuch/hmatrix/tree/sundials";
      url = "";
      synopsis = "hmatrix interface to sundials";
      description = "An interface to the solving suite SUNDIALS. Currently, it\nmimics the solving interface in hmstrix-gsl but\nprovides more diagnostic information and the\nButcher Tableaux (for Runge-Kutta methods).";
      buildType = "Simple";
    };
    components = {
      "hmatrix-sundials" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.inline-c)
          (hsPkgs.vector)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.hmatrix)
        ];
        libs = [
          (pkgs.sundials_arkode)
        ];
      };
      tests = {
        "hmatrix-sundials-testsuite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.inline-c)
            (hsPkgs.vector)
            (hsPkgs.template-haskell)
            (hsPkgs.containers)
            (hsPkgs.hmatrix)
            (hsPkgs.plots)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-rasterific)
            (hsPkgs.lens)
            (hsPkgs.hspec)
          ];
          libs = [
            (pkgs.sundials_arkode)
          ];
        };
      };
    };
  }