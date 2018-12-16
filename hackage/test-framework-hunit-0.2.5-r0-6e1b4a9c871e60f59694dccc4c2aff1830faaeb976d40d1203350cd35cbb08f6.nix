{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      base4 = true;
      base3 = false;
    };
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "test-framework-hunit";
        version = "0.2.5";
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
      "library" = {
        depends = [
          (hsPkgs.test-framework)
          (hsPkgs.HUnit)
          (hsPkgs.extensible-exceptions)
        ] ++ (if flags.base3
          then [ (hsPkgs.base) ]
          else pkgs.lib.optional (flags.base4) (hsPkgs.base));
      };
    };
  }