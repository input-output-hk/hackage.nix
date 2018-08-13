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
        name = "hemkay";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Patai Gergely";
      maintainer = "Patai Gergely (patai@iit.bme.hu)";
      author = "Patai Gergely";
      homepage = "";
      url = "";
      synopsis = "A module music mixer and player";
      description = "Hemkay (An M.K. Player Whose Name Starts with an H) is a simple\nmusic module player that performs all the mixing in Haskell.  It\nsupports the popular ProTracker format and some of its variations\nwith different numbers of channels.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hemkay" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.portaudio)
            (hsPkgs.hemkay-core)
          ];
        };
      };
    };
  }