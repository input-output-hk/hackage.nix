{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghcid";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2014";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "https://github.com/ndmitchell/ghcid#readme";
        url = "";
        synopsis = "GHCi based bare bones IDE";
        description = "Either \\\"GHCi as a daemon\\\" or \\\"GHC + a bit of an IDE\\\". A very simple Haskell development tool which shows you the errors in your project and updates them whenever you save. Run @ghcid --height=10 --topmost --command=ghci@, where @--height@ is the height of the console you will use, @--topmost@ makes the window on top of all others (Windows only) and @--command@ is the command to start GHCi on your project.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "ghcid" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.time
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.cmdargs
            ];
          };
        };
      };
    }