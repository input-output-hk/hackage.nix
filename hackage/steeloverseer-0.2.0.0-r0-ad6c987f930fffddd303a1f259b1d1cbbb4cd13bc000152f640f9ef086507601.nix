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
      specVersion = "1.8";
      identifier = {
        name = "steeloverseer";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "efsubenovex@gmail.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/steeloverseer";
      url = "";
      synopsis = "A file watcher.";
      description = "A command line tool that responds to filesystem events. Users can provide regular expressions to match on filepaths and shell commands to execute in serial when matches are found. Displays text using a subset of available primary colors.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sos" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fsnotify)
            (hsPkgs.system-filepath)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.pipes)
            (hsPkgs.stm)
            (hsPkgs.regex-tdfa)
          ];
        };
      };
    };
  }