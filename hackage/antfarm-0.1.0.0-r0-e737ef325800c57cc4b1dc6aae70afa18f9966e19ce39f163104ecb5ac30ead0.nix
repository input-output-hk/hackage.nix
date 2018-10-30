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
      specVersion = "1.8";
      identifier = {
        name = "antfarm";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eric.kow@gmail.com";
      author = "Eric Kow";
      homepage = "http://hub.darcs.net/kowey/antfarm";
      url = "";
      synopsis = "Referring expressions for definitions";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.minimorph)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "antfarm" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.antfarm)
            (hsPkgs.containers)
            (hsPkgs.minimorph)
            (hsPkgs.mtl)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "antfarm-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.antfarm)
            (hsPkgs.HUnit)
            (hsPkgs.minimorph)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }