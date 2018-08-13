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
        name = "tasty-hunit";
        version = "0.8";
      };
      license = "MIT";
      copyright = "";
      maintainer = "roma@ro-che.info";
      author = "Roman Cheplyaka";
      homepage = "";
      url = "";
      synopsis = "HUnit support for the Tasty test framework.";
      description = "HUnit support for the Tasty test framework.";
      buildType = "Simple";
    };
    components = {
      "tasty-hunit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tasty)
          (hsPkgs.HUnit)
          (hsPkgs.mtl)
        ];
      };
    };
  }