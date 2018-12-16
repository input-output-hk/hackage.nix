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
        name = "setenv";
        version = "0.1.1.3";
      };
      license = "MIT";
      copyright = "(c) 2012-2015 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "A cross-platform library for setting environment variables";
      description = "A cross-platform library for setting environment variables\n\nNote: Since @base-4.7.0.0@ the functions @setEnv@ and\n@unsetEnv@ are provided by @System.Environment@.\n@System.SetEnv@ merily re-exports those functions when built\nwith @base >= 4.7@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }