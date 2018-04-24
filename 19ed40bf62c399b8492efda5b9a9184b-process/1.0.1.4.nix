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
          version = "1.0.1.4";
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
          ] ++ pkgs.lib.optional (!(compiler.isNhc98 && true) && !system.isWindows) hsPkgs.unix) ++ [
            hsPkgs.base
          ];
        };
      };
    }