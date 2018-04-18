{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "system-info";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "2016 ChaosGroup";
        maintainer = "daniel.taskoff@chaosgroup.com";
        author = "Daniel Taskoff";
        homepage = "https://github.com/ChaosGroup/system-info";
        url = "";
        synopsis = "Get information about CPUs, memory, etc.";
        description = "An OS independent Haskell library for getting information about CPUs, memory, etc.";
        buildType = "Simple";
      };
      components = {
        system-info = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.attoparsec
            hsPkgs.text
          ] ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
          libs = optionals system.isWindows [
            pkgs.ole32
            pkgs.oleaut32
            pkgs.wbemuuid
          ];
        };
        tests = {
          system-info-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.system-info
            ];
          };
        };
      };
    }