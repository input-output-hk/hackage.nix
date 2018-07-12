{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snipcheck";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "2017 Nicolas Mattia";
        maintainer = "nicolas@nmattia.com";
        author = "Nicolas Mattia";
        homepage = "https://github.com/nmattia/snipcheck#readme";
        url = "";
        synopsis = "Markdown tester";
        description = "Markdown snippet runner and checker";
        buildType = "Simple";
      };
      components = {
        "snipcheck" = {
          depends  = [
            hsPkgs.base
            hsPkgs.pandoc
            hsPkgs.process
            hsPkgs.containers
          ];
        };
      };
    }