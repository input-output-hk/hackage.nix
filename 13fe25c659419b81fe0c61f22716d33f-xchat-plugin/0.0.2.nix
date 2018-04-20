{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "xchat-plugin";
          version = "0.0.2";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "sedrikov@gmail.com";
        author = "AUGER Cedric";
        homepage = "";
        url = "";
        synopsis = "XChat";
        description = "This package adds bindings to the plugins system of XChat to Haskell. Refer to the README file.";
        buildType = "Simple";
      };
      components = {
        xchat-plugin = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.unix
          ];
        };
        exes = {
          hsxchat = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.unix
            ];
          };
        };
      };
    }