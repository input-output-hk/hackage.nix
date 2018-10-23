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
        name = "bdd";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "irek@humane.software";
      author = "Irek Jozwiak, Pavlo Kerestey";
      homepage = "http://github.com/humane-software/haskell-bdd";
      url = "";
      synopsis = "Behavior-Driven Development DSL";
      description = "\nAn internal domain-specific language for testing programs using Behavior-Driven Development (BDD) process. It helps arranging your tests in \"given\" \\/ \"when\" \\/ \"then\" parts.\n\nFor a more detailed description please refer to <https://github.com/humane-software/haskell-bdd/>";
      buildType = "Simple";
    };
    components = {
      "bdd" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HUnit)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "system-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }