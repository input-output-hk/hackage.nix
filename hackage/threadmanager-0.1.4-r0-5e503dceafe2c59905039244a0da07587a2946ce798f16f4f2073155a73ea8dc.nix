{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "threadmanager"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>, Ian Taylor <ian@lorf.org>";
      author = "_Real World Haskell_, http://www.realworldhaskell.org/";
      homepage = "http://github.com/bsl/threadmanager";
      url = "";
      synopsis = "Simple thread management";
      description = "A simple thread management API inspired by the one in chapter 24 of /Real World Haskell/.\n\nSee <http://book.realworldhaskell.org/read/concurrent-and-multicore-programming.html>.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      };
    }