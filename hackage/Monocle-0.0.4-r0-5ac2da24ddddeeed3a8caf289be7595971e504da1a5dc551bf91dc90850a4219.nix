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
      specVersion = "1.2";
      identifier = {
        name = "Monocle";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Osman Bineev (bineev AT gmail DOT com)";
      author = "Osman Bineev";
      homepage = "";
      url = "";
      synopsis = "Symbolic computations in strict monoidal categories with LaTeX output.";
      description = "Symbolic computations in strict monoidal categories with LaTeX output.\nSee 'monocle-usage.pdf' and 'monocle-test.hs' included in package.\nOne of goals of this project is to develop the tool for automatic\ndrawing diagrams of morphisms and proofs in form suitable for LaTeX (e.g. for XY-pic).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
        ];
      };
    };
  }