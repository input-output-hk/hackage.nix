{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "io-capture";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nonowarn@gmail.com";
        author = "Yusaku Hashimoto";
        homepage = "";
        url = "";
        synopsis = "capture IO action's stdout and stderr";
        description = "capture IO action's stdout and stderr";
        buildType = "Simple";
      };
      components = {
        io-capture = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.strict
            hsPkgs.directory
          ];
        };
      };
    }