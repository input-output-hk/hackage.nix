{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "teleport";
          version = "0.0.0.10";
        };
        license = "MIT";
        copyright = "2010 Siddharth Bhat";
        maintainer = "siddu.druid@gmail.com";
        author = "Siddharth Bhat";
        homepage = "https://github.com/bollu/teleport#readme";
        url = "";
        synopsis = "A tool to quickly switch between directories";
        description = "A tool to quickly switch between directories\nPlease see README.md for more details";
        buildType = "Simple";
      };
      components = {
        "teleport" = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          "teleport-exe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.teleport
              hsPkgs.turtle
              hsPkgs.optparse-applicative
              hsPkgs.system-filepath
              hsPkgs.text
              hsPkgs.configurator
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.ansi-terminal
            ];
          };
        };
        tests = {
          "teleport-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.teleport
            ];
          };
        };
      };
    }