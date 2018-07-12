{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "test-framework-program";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Wick <awick@uhsure.com>";
        author = "Adam Wick <awick@uhsure.com>";
        homepage = "";
        url = "";
        synopsis = "Test framework support for running simple test programs.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "test-framework-program" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.test-framework
          ];
        };
      };
    }