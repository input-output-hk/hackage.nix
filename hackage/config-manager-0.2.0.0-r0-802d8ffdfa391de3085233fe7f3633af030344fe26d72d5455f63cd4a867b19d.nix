{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "config-manager";
        version = "0.2.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "joris@guyonvarch.me";
      author = "Joris Guyonvarch";
      homepage = "https://gitlab.com/guyonvarch/config-manager";
      url = "";
      synopsis = "Configuration management";
      description = "A configuration management library which supports:\n\n* name-value bindings,\n\n* required or optional imports,\n\n* comments.\n\nFor details of the configuration file format, see\n<http://hackage.haskell.org/packages/archive/config-manager/latest/doc/html/Data-ConfigManager.html>.";
      buildType = "Simple";
    };
    components = {
      "config-manager" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.parsec)
          (hsPkgs.filepath)
          (hsPkgs.time)
        ];
      };
      tests = {
        "test-config-manager" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.config-manager)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.temporary)
            (hsPkgs.directory)
            (hsPkgs.unordered-containers)
            (hsPkgs.time)
          ];
        };
      };
    };
  }