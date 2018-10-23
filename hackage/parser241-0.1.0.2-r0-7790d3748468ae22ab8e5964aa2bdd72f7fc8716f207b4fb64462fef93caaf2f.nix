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
        name = "parser241";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Yu Li";
      maintainer = "ylilarry@gmail.com";
      author = "Yu Li";
      homepage = "https://github.com/YLiLarry/parser241-product-rule";
      url = "";
      synopsis = "An interface to create production rules using augmented grammars";
      description = "This package allows you to define production rules using clean augmented grammars.";
      buildType = "Simple";
    };
    components = {
      "parser241" = {
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