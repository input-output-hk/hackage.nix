{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "twitch"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/twitch";
      url = "";
      synopsis = "A high level file watcher DSL";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.Glob)
          (hsPkgs.time)
          (hsPkgs.data-default)
          (hsPkgs.fsnotify)
          (hsPkgs.optparse-applicative)
          (hsPkgs.stm-chans)
          (hsPkgs.system-fileio)
          ];
        };
      };
    }