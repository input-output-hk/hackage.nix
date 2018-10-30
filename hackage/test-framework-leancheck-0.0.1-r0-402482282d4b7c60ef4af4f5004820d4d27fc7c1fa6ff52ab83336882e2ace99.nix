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
        name = "test-framework-leancheck";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/test-framework-leancheck#readme";
      url = "";
      synopsis = "LeanCheck support for test-framework.";
      description = "LeanCheck support for test-framework.\n\nThis package can be used to incorporate LeanCheck tests\ninto test-framework test suites by means of the\n@Test.Framework.Providers.LeanCheck.testProperty@ function.\n\nPlease see the Haddock documentation and README for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.test-framework)
          (hsPkgs.leancheck)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.leancheck)
            (hsPkgs.test-framework-leancheck)
          ];
        };
      };
    };
  }