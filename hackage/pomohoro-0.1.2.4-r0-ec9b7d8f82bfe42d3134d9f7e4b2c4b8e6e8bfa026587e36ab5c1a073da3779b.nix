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
      specVersion = "1.10";
      identifier = {
        name = "pomohoro";
        version = "0.1.2.4";
      };
      license = "ISC";
      copyright = "(c) 2016 kqr";
      maintainer = "k@rdw.se";
      author = "kqr";
      homepage = "https://github.com/kqr/pomohoro#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.directory)
          (hsPkgs.network)
          (hsPkgs.dbus)
          (hsPkgs.fdo-notify)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.configurator)
        ];
      };
      exes = {
        "pomohoro-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.pomohoro)
            (hsPkgs.text)
            (hsPkgs.optparse-applicative)
            (hsPkgs.hdaemonize)
            (hsPkgs.time)
          ];
        };
      };
      tests = {
        "pomohoro-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pomohoro)
            (hsPkgs.protolude)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }