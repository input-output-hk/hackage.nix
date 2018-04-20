{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
      base3 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "test-framework-hunit";
          version = "0.3.0.2";
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
        test-framework-hunit = {
          depends  = [
            hsPkgs.test-framework
            hsPkgs.HUnit
            hsPkgs.extensible-exceptions
          ] ++ (if _flags.base3
            then [ hsPkgs.base ]
            else pkgs.lib.optional _flags.base4 hsPkgs.base);
        };
      };
    }