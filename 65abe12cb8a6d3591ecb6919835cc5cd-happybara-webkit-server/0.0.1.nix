{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "happybara-webkit-server";
          version = "0.0.1";
        };
        license = "MIT";
        copyright = "Copyright (c) 2014 Charles Strahan";
        maintainer = "Charles Strahan <charles.c.strahan@gmail.com>";
        author = "Charles Strahan";
        homepage = "https://github.com/cstrahan/happybara/happybara-webkit-server";
        url = "";
        synopsis = "WebKit Server binary for Happybara (taken from capybara-webkit)";
        description = "";
        buildType = "Custom";
      };
      components = {
        "happybara-webkit-server" = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
      };
    }