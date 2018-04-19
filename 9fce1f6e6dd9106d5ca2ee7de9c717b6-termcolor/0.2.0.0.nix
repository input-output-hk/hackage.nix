{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "termcolor";
          version = "0.2.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "2017 Mahdi Dibaiee";
        maintainer = "mahdi@theread.me";
        author = "Mahdi Dibaiee";
        homepage = "https://github.com/mdibaiee/termcolor#readme";
        url = "";
        synopsis = "Composable terminal colors";
        description = "Composable terminal colors";
        buildType = "Simple";
      };
      components = {
        termcolor = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          termcolor = {
            depends  = [
              hsPkgs.base
              hsPkgs.termcolor
              hsPkgs.cli
            ];
          };
        };
      };
    }