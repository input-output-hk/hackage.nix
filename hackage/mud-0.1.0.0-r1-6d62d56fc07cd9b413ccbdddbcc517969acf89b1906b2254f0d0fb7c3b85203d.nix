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
        name = "mud";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2017, Thomas Feron";
      maintainer = "thomas.feron@redspline.com";
      author = "Thomas Feron";
      homepage = "";
      url = "";
      synopsis = "Multi-version deployer for web applications";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.optparse-applicative)
          (hsPkgs.filepath)
          (hsPkgs.unix)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.free)
          (hsPkgs.time)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "mud" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mud)
            (hsPkgs.mtl)
          ];
        };
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mud)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.free)
            (hsPkgs.directory)
            (hsPkgs.unix)
            (hsPkgs.time)
          ];
        };
      };
    };
  }