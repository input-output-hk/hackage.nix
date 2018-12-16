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
        name = "ochintin-daicho";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "2017 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto";
      homepage = "https://github.com/arowM/haskell-ochintin-daicho#readme";
      url = "";
      synopsis = "A module to manage payroll books for Japanese companies.";
      description = "A module to manage payroll books for Japanese companies. This enable to export data to tax withholding book, etc...";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bookkeeping)
          (hsPkgs.mono-traversable)
          (hsPkgs.text)
          (hsPkgs.transaction)
        ];
      };
      tests = {
        "ochintin-daicho-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ochintin-daicho)
          ];
        };
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.doctest)
            (hsPkgs.ochintin-daicho)
          ];
        };
      };
    };
  }