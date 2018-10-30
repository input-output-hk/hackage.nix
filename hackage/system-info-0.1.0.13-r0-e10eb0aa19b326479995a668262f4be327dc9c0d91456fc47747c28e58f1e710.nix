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
      specVersion = "1.18";
      identifier = {
        name = "system-info";
        version = "0.1.0.13";
      };
      license = "MIT";
      copyright = "2016 ChaosGroup";
      maintainer = "daniel.taskoff@chaosgroup.com";
      author = "Daniel Taskoff";
      homepage = "https://github.com/ChaosGroup/system-info";
      url = "";
      synopsis = "Get information about CPUs, memory, etc.";
      description = "An OS independent Haskell library for getting information about CPUs, memory, etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
      };
      tests = {
        "system-info-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.system-info)
          ];
        };
      };
    };
  }