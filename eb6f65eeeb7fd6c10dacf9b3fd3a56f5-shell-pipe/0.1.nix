{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "shell-pipe";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "David J. Sankel <camior@gmail.com>";
        homepage = "http://gnu.rtin.bz/directory/devel/prog/other/shell-haskell.html";
        url = "http://darcs.haskell.org/shell-pipe/";
        synopsis = "Pipe streams through external shell commands";
        description = "Beginning with GHC-6.4 System.Process is available, which is the better choice. Original name was shell-haskell.";
        buildType = "Custom";
      };
      components = {
        shell-pipe = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          Example1 = {
            depends  = [ hsPkgs.base ];
          };
          Example2 = {
            depends  = [ hsPkgs.base ];
          };
          Bug1 = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }