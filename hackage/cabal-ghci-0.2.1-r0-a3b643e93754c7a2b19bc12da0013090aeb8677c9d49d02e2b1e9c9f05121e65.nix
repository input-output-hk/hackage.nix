{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cabal-ghci";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "etienne@atnnn.com";
      author = "Etienne Laurin";
      homepage = "http://code.atnnn.com/projects/cabal-ghci/wiki";
      url = "";
      synopsis = "Set up ghci with options taken from a .cabal file";
      description = "The executable cabal-ghci runs ghci with the paths and extensions needed by a cabal project. The cabalSet function can be added to your .ghci to provide the same functionality at runtime, giving you more control over the options that are set.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "cabal-ghci" = {
          depends  = [ (hsPkgs.process) ];
        };
      };
    };
  }