{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "exinst-serialise";
        version = "0.7";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015-2018";
      maintainer = "renλren!zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/exinst";
      url = "";
      synopsis = "Dependent pairs and their instances.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "exinst-serialise" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.serialise)
          (hsPkgs.constraints)
          (hsPkgs.exinst)
          (hsPkgs.singletons)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.exinst)
            (hsPkgs.exinst-serialise)
            (hsPkgs.QuickCheck)
            (hsPkgs.serialise)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }