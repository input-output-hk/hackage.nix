{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "file-command-qq";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "https://github.com/jfischoff/file-command-qq";
        url = "";
        synopsis = "Quasiquoter for system commands involving filepaths";
        description = "";
        buildType = "Simple";
      };
      components = {
        "file-command-qq" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.template-haskell
            hsPkgs.process
            hsPkgs.system-filepath
            hsPkgs.text
          ];
        };
      };
    }