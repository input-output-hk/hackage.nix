{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "babylon";
          version = "0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) 2009 Pedro Vasconcelos";
        maintainer = "Pedro Vasconcelos <pbv@dcc.fc.up.pt>";
        author = "Pedro Vasconcelos <pbv@dcc.fc.up.pt>";
        homepage = "";
        url = "";
        synopsis = "An implementation of a simple 2-player board game";
        description = "The board game was originally designed by Bruno Faidutti (www.faidutti.com).\nIn this implementation you play against the computer.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "babylon" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.wx
              hsPkgs.wxcore
              hsPkgs.array
            ];
          };
        };
      };
    }