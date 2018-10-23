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
        name = "quickcheck-simple";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015-2018 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "";
      url = "";
      synopsis = "Test properties and default-mains for QuickCheck";
      description = "This package contains definitions of test properties and default-mains\nusing QuickCheck library.";
      buildType = "Simple";
    };
    components = {
      "quickcheck-simple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }