{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "signal";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "remdezx+github@gmail.com";
        author = "Piotr Mlodawski";
        homepage = "http://github.com/pmlodawski/signal";
        url = "";
        synopsis = "Signal handling, multiplatform way";
        description = "This simple library allows you to handle os signals on both Linux and Windows.";
        buildType = "Simple";
      };
      components = {
        "signal" = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
        exes = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.signal
            ];
          };
        };
      };
    }