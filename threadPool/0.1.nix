{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "threadPool";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "";
        author = "Brian Jaress";
        homepage = "http://brian-jaress.livejournal.com/";
        url = "";
        synopsis = "Runs other programs in the manner of a thread pool";
        description = "Takes a single, optional argument which is the number\nof threads (the default is three).  Give it the commands to run, one\nper line, through standard input.";
        buildType = "Simple";
      };
      components = {
        exes = {
          threadpool = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
            ];
          };
        };
      };
    }