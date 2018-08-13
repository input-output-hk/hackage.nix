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
      specVersion = "1.2";
      identifier = {
        name = "hemkay-core";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Patai Gergely";
      maintainer = "Patai Gergely (patai.gergely@gmail.com)";
      author = "Patai Gergely";
      homepage = "";
      url = "";
      synopsis = "A device independent module music mixer";
      description = "Hemkay (An M.K. Player Whose Name Starts with an H) is a simple\nmusic module player that performs all the mixing in Haskell.  It\nsupports the popular ProTracker format and some of its variations\nwith different numbers of channels.\n\nThis package contains the mixing routines, which can be reused in\nany application.  The output can be written into a file or played\nback in real time.";
      buildType = "Simple";
    };
    components = {
      "hemkay-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
        ];
      };
    };
  }