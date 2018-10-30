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
        name = "quickcheck-webdriver";
        version = "0.1.0.7";
      };
      license = "MIT";
      copyright = "";
      maintainer = "christianpbrink@gmail.com";
      author = "Christian Brink";
      homepage = "";
      url = "";
      synopsis = "Utilities for using WebDriver with QuickCheck";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.webdriver)
          (hsPkgs.transformers)
        ];
      };
    };
  }