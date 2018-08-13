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
      specVersion = "1.2";
      identifier = {
        name = "AC-MiniTest";
        version = "1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "MathematicalOrchid@hotmail.com";
      author = "Andrew Coppin";
      homepage = "";
      url = "";
      synopsis = "A simple test framework.";
      description = "This is a simple testing library. It focuses mainly on making it\neasy to run large test suites and collect the results together.\n\nThis package is currently fairly experimental. The API may change\nin the near future. Hopefully this release should be relatively\nbug-free, however.\n\nChanges:\n\n* Initial release.";
      buildType = "Simple";
    };
    components = {
      "AC-MiniTest" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
    };
  }