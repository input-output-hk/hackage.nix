{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "test-framework-hunit";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "batterseapower@hotmail.com";
      author = "Max Bolingbroke";
      homepage = "http://github.com/batterseapower/test-framework";
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