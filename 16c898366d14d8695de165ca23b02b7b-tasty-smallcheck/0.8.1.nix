{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tasty-smallcheck";
          version = "0.8.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Roman Cheplyaka <roma@ro-che.info>";
        homepage = "http://documentup.com/feuerbach/tasty";
        url = "";
        synopsis = "SmallCheck support for the Tasty test framework.";
        description = "SmallCheck support for the Tasty test framework.";
        buildType = "Simple";
      };
      components = {
        "tasty-smallcheck" = {
          depends  = [
            hsPkgs.tasty
            hsPkgs.smallcheck
            hsPkgs.base
            hsPkgs.async
            hsPkgs.tagged
          ];
        };
      };
    }