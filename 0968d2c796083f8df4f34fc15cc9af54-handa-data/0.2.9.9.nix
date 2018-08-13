{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "handa-data";
        version = "0.2.9.9";
      };
      license = "MIT";
      copyright = "(c) 2005-16 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/functionally/raft";
      url = "https://bitbucket.org/functionally/raft/downloads/opengl-dlp-stereo-0.3.2.0.tar.gz";
      synopsis = "This package is deprecated.  It formerly contained Haskell utilities for data structures and data manipulation.";
      description = "This package is deprecated.  This Haskell library formerly contained data structures and data manipulation functions for general uses.";
      buildType = "Simple";
    };
    components = {
      "handa-data" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }