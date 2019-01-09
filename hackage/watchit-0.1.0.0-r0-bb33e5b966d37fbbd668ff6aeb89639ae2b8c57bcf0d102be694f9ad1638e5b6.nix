{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "watchit"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ptanimoto@gmail.com";
      author = "Paulo Tanimoto";
      homepage = "";
      url = "";
      synopsis = "File change watching utility";
      description = "Watch a directory and run a command whenever a file changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.fsnotify)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.resource-pool)
          (hsPkgs.streaming-commons)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          ];
        };
      exes = {
        "watchit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fsnotify)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.resource-pool)
            (hsPkgs.streaming-commons)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs.watchit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.async)
            (hsPkgs.system-fileio)
            (hsPkgs.system-filepath)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.smallcheck)
            ];
          };
        };
      };
    }