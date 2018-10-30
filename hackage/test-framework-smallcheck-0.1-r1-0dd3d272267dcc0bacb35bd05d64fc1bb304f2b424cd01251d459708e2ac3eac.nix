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
      specVersion = "1.6";
      identifier = {
        name = "test-framework-smallcheck";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka <roma@ro-che.info>";
      homepage = "https://github.com/feuerbach/smallcheck";
      url = "";
      synopsis = "Support for SmallCheck tests in test-framework";
      description = "Support for SmallCheck tests in test-framework";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.test-framework)
          (hsPkgs.smallcheck)
          (hsPkgs.base)
        ];
      };
    };
  }