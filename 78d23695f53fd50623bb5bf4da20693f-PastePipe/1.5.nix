{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "PastePipe";
          version = "1.5";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "creswick@gmail.com";
        author = "Rogan Creswick";
        homepage = "http://github.com/creswick/pastepipe";
        url = "";
        synopsis = "CLI for pasting to lpaste.net";
        description = "PastePipe reads from standard in and posts to <lpaste.net>.\nIt will auto-detect your username, but that can be\noverridden with command line options (--user)\nTitles are set with -t, language with -l.";
        buildType = "Simple";
      };
      components = {
        "PastePipe" = {
          depends  = [
            hsPkgs.base
            hsPkgs.HTTP
            hsPkgs.network
            hsPkgs.cmdargs
          ];
        };
        exes = {
          "pastepipe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HTTP
              hsPkgs.network
              hsPkgs.cmdargs
            ];
          };
        };
      };
    }