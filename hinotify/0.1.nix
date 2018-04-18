{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hinotify";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Lennart Kolmodin";
        author = "Lennart Kolmodin";
        homepage = "http://haskell.org/~kolmodin/code/hinotify/";
        url = "";
        synopsis = "Haskell binding to INotify";
        description = "Haskell binding to INotify";
        buildType = "Custom";
      };
      components = {
        hinotify = {
          depends  = [ hsPkgs.base ];
        };
      };
    }