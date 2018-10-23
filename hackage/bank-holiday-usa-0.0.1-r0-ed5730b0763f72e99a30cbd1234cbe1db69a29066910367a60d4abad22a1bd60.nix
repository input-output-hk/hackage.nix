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
        name = "bank-holiday-usa";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "2015 brady.ouren <brady.ouren@gmail.com>";
      maintainer = "brady.ouren <brady.ouren@gmail.com>";
      author = "brady.ouren <brady.ouren@gmail.com>";
      homepage = "https://github.com/tippenein/BankHoliday";
      url = "";
      synopsis = "A library for determining US bank holidays";
      description = "A library for determining US bank holidays";
      buildType = "Simple";
    };
    components = {
      "bank-holiday-usa" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bank-holiday-usa)
            (hsPkgs.time)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }