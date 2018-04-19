{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-hunit";
          version = "0.9.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Roman Cheplyaka <roma@ro-che.info>";
        homepage = "http://documentup.com/feuerbach/tasty";
        url = "";
        synopsis = "HUnit support for the Tasty test framework.";
        description = "HUnit support for the Tasty test framework.";
        buildType = "Simple";
      };
      components = {
        tasty-hunit = {
          depends  = [
            hsPkgs.base
            hsPkgs.tasty
          ];
        };
      };
    }