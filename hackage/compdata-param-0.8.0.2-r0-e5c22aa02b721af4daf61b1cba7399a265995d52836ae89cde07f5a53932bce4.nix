{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "compdata-param"; version = "0.8.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "paba@di.ku.dk";
      author = "Patrick Bahr, Tom Hvitved";
      homepage = "";
      url = "";
      synopsis = "Parametric Compositional Data Types";
      description = "Based on Wouter Swierstra's Functional Pearl /Data types a la carte/\n(Journal of Functional Programming, 18(4):423-436, 2008,\n<http://dx.doi.org/10.1017/S0956796808006758>), this package\nprovides a framework for defining recursive data types in a\ncompositional manner with support for binders.\n\nThis package implemements /parametric compositional data types/\n(Workshop on Mathematically Structured Functional Programming, 3-24,\n2012, <http://dx.doi.org/10.4204/EPTCS.76.3>), generalising\ncompositional data types (as implemented in the /compdata/ package)\nwith support for parametric higher-order abstract syntax\n(PHOAS).\n\nExamples of using parametric compositional data types are bundled\nwith the package in the folder @examples@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.compdata)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.compdata)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.containers)
            (hsPkgs.compdata-param)
            ];
          };
        };
      };
    }