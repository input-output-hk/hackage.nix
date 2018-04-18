{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sensei";
          version = "0.1.0";
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
        exes = {
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
            ];
          };
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