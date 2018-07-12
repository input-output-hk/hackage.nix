{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "chalk";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "joomy@cattheory.com";
        author = "Joomy Korkut";
        homepage = "http://github.com/joom/chalk";
        url = "";
        synopsis = "Terminal string styling.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "chalk" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }