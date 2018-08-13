{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "test-framework-hunit";
        version = "0.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Max Bolingbroke <batterseapower@hotmail.com>";
      author = "Max Bolingbroke <batterseapower@hotmail.com>";
      homepage = "http://batterseapower.github.com/test-framework/";
      url = "";
      synopsis = "HUnit support for the test-framework package.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "test-framework-hunit" = {
        depends  = [
          (hsPkgs.test-framework)
          (hsPkgs.HUnit)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }