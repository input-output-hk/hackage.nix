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
      specVersion = "1.18";
      identifier = {
        name = "harmony";
        version = "0.1.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "santimunin@gmail.com";
      author = "Santiago Munín";
      homepage = "";
      url = "";
      synopsis = "A web service specification compiler that generates implementation and tests.";
      description = "A parser of web service specification that is able to generate servers, clients and tests.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.BNFC)
          (hsPkgs.hastache)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.derive)
          (hsPkgs.directory)
          (hsPkgs.QuickCheck)
          (hsPkgs.process)
          (hsPkgs.hslogger)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
          (hsPkgs.buildPackages.happy)
        ];
      };
      exes = {
        "harmony" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.harmony)
          ];
        };
      };
      tests = {
        "hspec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.harmony)
            (hsPkgs.derive)
            (hsPkgs.hslogger)
          ];
        };
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }