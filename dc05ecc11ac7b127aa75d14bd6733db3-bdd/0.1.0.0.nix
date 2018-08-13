{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bdd";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "irek@humane.software";
      author = "Irek Jozwiak, Pavlo Kerestey";
      homepage = "http://github.com/humane-software/haskell-bdd";
      url = "";
      synopsis = "Behavior-Driven Development DSL";
      description = "A domain-specific language for testing programs using Behavior-Driven Development (BDD) process.";
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