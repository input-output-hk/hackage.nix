{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "threadmanager";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Brian Lewis <brian@lorf.org>, Ian Taylor <ian@lorf.org>";
        author = "_Real World Haskell_, http://www.realworldhaskell.org/";
        homepage = "http://github.com/bsl/threadmanager";
        url = "";
        synopsis = "Simple thread management";
        description = "A simple thread management API inspired by the one in chapter 24\nof /Real World Haskell/.\n\nSee <http://book.realworldhaskell.org/read/concurrent-and-multicore-programming.html>.";
        buildType = "Simple";
      };
      components = {
        threadmanager = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }