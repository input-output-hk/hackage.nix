{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "texrunner"; version = "0.0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2015 Christopher Chalmers";
      maintainer = "c.chalmers@me.com";
      author = "Christopher Chalmers";
      homepage = "";
      url = "";
      synopsis = "Functions for running Tex from Haskell.";
      description = "texrunner is an interface to tex that attempts to parse errors and\ncan parse tex in online mode to retrive hbox sizes.\n\nThis package should be considered very experimental. Eventually I hope\nit will be good enough for general use but for now it's only suitable\nfor simple things.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.temporary)
          (hsPkgs.process)
          (hsPkgs.mtl)
          (hsPkgs.attoparsec)
          (hsPkgs.io-streams)
          (hsPkgs.semigroups)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
            (hsPkgs.texrunner)
            ];
          };
        };
      };
    }