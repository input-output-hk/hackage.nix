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
        name = "eventful-test-helpers";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "David Reaver";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Common module used for eventful tests";
      description = "Common module used for eventful tests";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.eventful-core)
          (hsPkgs.aeson)
          (hsPkgs.aeson-casing)
          (hsPkgs.extra)
          (hsPkgs.hspec)
          (hsPkgs.monad-logger)
        ];
      };
    };
  }