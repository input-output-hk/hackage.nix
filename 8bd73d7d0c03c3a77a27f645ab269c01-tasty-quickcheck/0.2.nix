{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-quickcheck";
          version = "0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "roma@ro-che.info";
        author = "Roman Cheplyaka";
        homepage = "";
        url = "";
        synopsis = "QuickCheck support for the Tasty test framework.";
        description = "QuickCheck support for the Tasty test framework.";
        buildType = "Simple";
      };
      components = {
        "tasty-quickcheck" = {
          depends  = [
            hsPkgs.base
            hsPkgs.tasty
            hsPkgs.QuickCheck
            hsPkgs.tagged
          ];
        };
      };
    }