{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sensei";
          version = "0.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "";
        homepage = "https://github.com/hspec/sensei#readme";
        url = "";
        synopsis = "Automatically run Hspec tests on file modifications";
        description = "";
        buildType = "Simple";
      };
      components = {
        sensei = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.process
            hsPkgs.fsnotify
            hsPkgs.time
            hsPkgs.wai
            hsPkgs.warp
            hsPkgs.http-types
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.network
            hsPkgs.ansi-terminal
            hsPkgs.directory
            hsPkgs.http-client
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.unix
          ];
        };
        exes = {
          sensei-web = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.process
              hsPkgs.fsnotify
              hsPkgs.time
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.http-types
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.network
              hsPkgs.ansi-terminal
              hsPkgs.directory
              hsPkgs.http-client
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.unix
              hsPkgs.sensei
            ];
          };
          seito = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.process
              hsPkgs.fsnotify
              hsPkgs.time
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.http-types
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.network
              hsPkgs.ansi-terminal
              hsPkgs.directory
              hsPkgs.http-client
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.unix
              hsPkgs.sensei
            ];
          };
          sensei = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.process
              hsPkgs.fsnotify
              hsPkgs.time
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.http-types
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.network
              hsPkgs.ansi-terminal
              hsPkgs.directory
              hsPkgs.http-client
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.unix
              hsPkgs.sensei
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.process
              hsPkgs.fsnotify
              hsPkgs.time
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.http-types
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.network
              hsPkgs.ansi-terminal
              hsPkgs.directory
              hsPkgs.http-client
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.unix
              hsPkgs.sensei
              hsPkgs.hspec
              hsPkgs.hspec-wai
              hsPkgs.mockery
              hsPkgs.silently
              hsPkgs.interpolate
            ];
          };
        };
      };
    }