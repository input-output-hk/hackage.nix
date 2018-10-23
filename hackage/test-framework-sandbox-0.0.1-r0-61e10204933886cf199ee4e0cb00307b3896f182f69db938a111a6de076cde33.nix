{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "test-framework-sandbox";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Benjamin Surma <benjamin.surma@gree.net>";
      author = "Benjamin Surma <benjamin.surma@gree.net>";
      homepage = "";
      url = "";
      synopsis = "test-sandbox support for the test-framework package";
      description = "Interfaces the test-sandbox the test-framework packages to allow writing system tests\nin Haskell in a standard fashion.\nThe environment is preserved between test cases, enabling the user, for instance, to start\na process in one test and stop it in another.";
      buildType = "Simple";
    };
    components = {
      "test-framework-sandbox" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ansi-terminal)
          (hsPkgs.lifted-base)
          (hsPkgs.mtl)
          (hsPkgs.temporary)
          (hsPkgs.test-framework)
          (hsPkgs.test-sandbox)
          (hsPkgs.transformers)
        ];
      };
    };
  }