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
        name = "system-test";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "(c) 2016 Christopher Wells";
      maintainer = "cwellsny@nycap.rr.com";
      author = "Christopher Wells";
      homepage = "https://github.com/ExcaliburZero/system-test-haskell";
      url = "";
      synopsis = "Runs system tests of applications.";
      description = "System Test is a Haskell application which allows you to\nspecify and run system tests of applications. Tests are\ndefined in JSON files, whereby each test has a name,\ncommand, and expected output.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "system-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
    };
  }