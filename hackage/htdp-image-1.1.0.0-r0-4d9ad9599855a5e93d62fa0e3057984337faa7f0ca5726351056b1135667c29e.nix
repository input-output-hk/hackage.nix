{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "htdp-image"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "trajafri@gmail.com";
      author = "Turab Jafri";
      homepage = "";
      url = "";
      synopsis = "Beginner friendly graphics library.";
      description = "htdp-image is a simple graphics library inspired by Racket's htdp/image.\nUnder the hood, it is a wrapper on top of Gloss, another easy\nto use graphics library but htdp-image makes drawing objects even easier for beginners.\nAs long as Gloss works on a machine, this library should also work.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.AC-Angle) (hsPkgs.base) (hsPkgs.gloss) ];
        };
      tests = {
        "htdp-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.htdp-image)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            ];
          };
        };
      };
    }