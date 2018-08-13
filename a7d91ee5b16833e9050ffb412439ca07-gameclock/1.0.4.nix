{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "gameclock";
        version = "1.0.4";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "quuxman@gmail.com";
      author = "Abram Clark <quuxman@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Game clock that shows two analog clock faces";
      description = "A game clock with optional Fischer time, two clock face styles, and other options";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gameclock" = {
          depends  = [
            (hsPkgs.cairo)
            (hsPkgs.gtk)
            (hsPkgs.glib)
          ] ++ (if _flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.containers)
              (hsPkgs.time)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }