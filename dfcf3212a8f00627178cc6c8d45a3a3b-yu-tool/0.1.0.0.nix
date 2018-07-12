{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yu-tool";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright (C) 2017 Johann Lee";
        maintainer = "qinka@live.com";
        author = "Johann Lee";
        homepage = "https://github.com/Qinka/Yu";
        url = "";
        synopsis = "Tool for Yu";
        description = "Tool for Yu";
        buildType = "Simple";
      };
      components = {
        exes = {
          "yu" = {
            depends  = [
              hsPkgs.base
              hsPkgs.yu-utils
              hsPkgs.yu-auth
              hsPkgs.cmdargs
              hsPkgs.directory
              hsPkgs.echo
              hsPkgs.filepath
              hsPkgs.process
            ];
          };
        };
      };
    }