{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sensei";
          version = "0.4.0";
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
          "seito" = {
            depends  = [
              hsPkgs.ansi-terminal
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.network
              hsPkgs.process
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unix
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
          "sensei" = {
            depends  = [
              hsPkgs.ansi-terminal
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.network
              hsPkgs.process
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unix
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
          "sensei-web" = {
            depends  = [
              hsPkgs.ansi-terminal
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.network
              hsPkgs.process
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unix
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.ansi-terminal
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.hspec
              hsPkgs.hspec-meta
              hsPkgs.hspec-wai
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.interpolate
              hsPkgs.mockery
              hsPkgs.network
              hsPkgs.process
              hsPkgs.silently
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unix
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
        };
      };
    }