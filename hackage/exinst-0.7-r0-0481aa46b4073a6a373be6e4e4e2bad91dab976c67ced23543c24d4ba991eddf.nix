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
        name = "exinst";
        version = "0.7";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015-2018";
      maintainer = "renzoλcarbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/exinst";
      url = "";
      synopsis = "Dependent pairs and their instances.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "exinst" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.constraints)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.profunctors)
          (hsPkgs.singletons)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.constraints)
            (hsPkgs.deepseq)
            (hsPkgs.exinst)
            (hsPkgs.hashable)
            (hsPkgs.profunctors)
            (hsPkgs.QuickCheck)
            (hsPkgs.singletons)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }