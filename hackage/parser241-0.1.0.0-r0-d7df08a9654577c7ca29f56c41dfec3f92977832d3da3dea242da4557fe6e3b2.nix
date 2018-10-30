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
        name = "parser241";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Yu Li";
      maintainer = "ylilarry@example.com";
      author = "Yu Li";
      homepage = "https://github.com/YLiLarry/parser241-product-rule";
      url = "";
      synopsis = "A clean interface to create production rules using augmented grammars";
      description = "Originally designed as a cheating tool for cs241 offered in the University of Waterloo.\nThis package allows you to define production rules using clean augmented grammars.\nPlease see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "ProductRule-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parser241)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }