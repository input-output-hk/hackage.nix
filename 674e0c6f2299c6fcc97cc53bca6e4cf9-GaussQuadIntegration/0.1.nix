{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "GaussQuadIntegration";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Grigory Sarnitsky <sargrigory@ya.ru>";
        author = "Grigory Sarnitsky <sargrigory@ya.ru>";
        homepage = "";
        url = "";
        synopsis = "Non-adaptive Gaussian quadrature for numeric integraton";
        description = "This package provides means for numeric integration with a Gaussian quadrature. Precisely, it incorporates non-adaptive approximation for definite integrals using 128-, 256-, 512- and 1024-point Gaussian quadrature rule.\nFor example, to find the approximation of an integral with a 256-point rule:\n\n> ╭ a\n> │   f(x) dx = nIntegrate256 f a b\n> ╯ b\n\n> > nIntegrate256 (\\x -> x^999) 0 1\n> 9.999999999999887e-4\n\nThe type of a function here is not confined only by Double -> Double, indeed one can use any instance of Fractional:\n\n> > nIntegrate256 (\\x -> x^999 :: Fixed Prec50) 0 1\n> 0.00100000000000000000000000000000000000000000000009\n\n128 and 256 rules are given with the accuracy of 50 digits, 512 --- with 35 digits (roughly quad), all of them were computed by myself. 1024-point rule was taken from the Gauss-Legendre Quadrature C\\/C++ library by Pavel Holoborodko (<http://www.holoborodko.com/pavel/numerical-methods/numerical-integration/>) and goes with the accuracy of 25 decimal digits (fixed point).";
        buildType = "Simple";
      };
      components = {
        GaussQuadIntegration = {
          depends  = [ hsPkgs.base ];
        };
      };
    }