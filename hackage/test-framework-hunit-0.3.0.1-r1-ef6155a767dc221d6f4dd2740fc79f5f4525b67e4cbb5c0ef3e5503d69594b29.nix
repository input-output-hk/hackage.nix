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
      specVersion = "1.6";
      identifier = {
        name = "test-framework-hunit";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Haskell Libraries <libraries@haskell.org>";
      author = "Max Bolingbroke <batterseapower@hotmail.com>";
      homepage = "https://batterseapower.github.io/test-framework/";
      url = "";
      synopsis = "HUnit support for the test-framework package.";
      description = "HUnit support for the test-framework package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.test-framework)
          (hsPkgs.HUnit)
          (hsPkgs.extensible-exceptions)
        ] ++ (if flags.base3
          then [ (hsPkgs.base) ]
          else pkgs.lib.optional (flags.base4) (hsPkgs.base));
      };
    };
  }