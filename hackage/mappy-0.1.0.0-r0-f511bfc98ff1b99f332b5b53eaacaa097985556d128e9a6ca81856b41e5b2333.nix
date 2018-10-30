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
        name = "mappy";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Michael Gilliland";
      maintainer = "mjg.py3@gmail.com";
      author = "Michael Gilliland";
      homepage = "http://github.com/githubuser/mappy#readme";
      url = "";
      synopsis = "A functional programming language focused around maps.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "mappy" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mappy)
            (hsPkgs.parsec)
          ];
        };
      };
      tests = {
        "mappy-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.mappy)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }