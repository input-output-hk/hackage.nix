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
      specVersion = "1.6";
      identifier = {
        name = "mute-unmute";
        version = "0.1.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "gtener@gmail.com";
      author = "Krzysztof Skrzętnicki";
      homepage = "";
      url = "";
      synopsis = "Watches your screensaver and (un)mutes music when you (un)lock the screen.";
      description = "This simple program will watch for the activation of screensaver (in Gnome) via it's DBus API. It's quite straitforward and extending it for KDE etc. should be simple. It also depends on ALSA (usage of alsactl command), but this should also be simple to fix if needed. It could also serve as a base for more complex programs that use DBus.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mute-unmute" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.monads-fd)
            (hsPkgs.network-dbus)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }