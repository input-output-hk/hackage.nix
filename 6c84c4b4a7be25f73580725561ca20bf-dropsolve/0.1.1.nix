{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dropsolve";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "daniel.trstenjak@gmail.com";
        author = "Daniel Trstenjak";
        homepage = "";
        url = "";
        synopsis = "A command line tool for resolving dropbox conflicts.";
        description = "A command line tool for resolving dropbox conflicts.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "dropsolve" = {
            depends  = [
              hsPkgs.base
              hsPkgs.regex-posix
              hsPkgs.time
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.haskell98
            ];
          };
        };
      };
    }