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
        name = "di-df1";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2018";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/di";
      url = "";
      synopsis = "Write logs in the df1 format using the di logging framework";
      description = "Write logs in the df1 format using the di logging framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.df1)
          (hsPkgs.di-core)
          (hsPkgs.di-monad)
          (hsPkgs.di-handle)
          (hsPkgs.stm)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.df1)
            (hsPkgs.di-core)
            (hsPkgs.di-df1)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }