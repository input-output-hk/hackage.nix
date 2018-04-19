{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rehoo";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John Wiegley <johnw@newartisans.com>";
        author = "John Wiegley";
        homepage = "https://github.com/jwiegley/rehoo";
        url = "";
        synopsis = "Rebuild default.hoo from many .hoo files in the current directory";
        description = "Rebuild default.hoo from many .hoo files in the current directory";
        buildType = "Simple";
      };
      components = {
        exes = {
          rehoo = {
            depends  = [
              hsPkgs.base
              hsPkgs.shelly
              hsPkgs.cmdargs
              hsPkgs.hslogger
              hsPkgs.regex-posix
              hsPkgs.system-filepath
              hsPkgs.text
              hsPkgs.monad-loops
              hsPkgs.split
              hsPkgs.SafeSemaphore
            ];
          };
        };
      };
    }