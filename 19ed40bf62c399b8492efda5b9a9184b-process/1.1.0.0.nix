{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "process";
          version = "1.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Process libraries";
        description = "This package contains libraries for dealing with system processes.";
        buildType = "Configure";
      };
      components = {
        process = {
          depends  = ([
            hsPkgs.directory
            hsPkgs.filepath
          ] ++ (if !compiler.isNhc98 && system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ])) ++ [
            hsPkgs.base
          ];
          libs = pkgs.lib.optional (!compiler.isNhc98 && system.isWindows) pkgs.kernel32;
        };
      };
    }