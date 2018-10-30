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
        name = "limp";
        version = "0.3.2.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "amos.robinson@gmail.com";
      author = "Amos Robinson";
      homepage = "https://github.com/amosr/limp";
      url = "";
      synopsis = "representation of Integer Linear Programs";
      description = "so far, this package just provides two representations for linear programs: \"Numeric.Limp.Program\", which is what I expect end-users to use, and\n\"Numeric.Limp.Canon\", which is simpler, but would be less nice for writing linear programs.\nsee the limp-cbc package for a simple solver.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-th)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.limp)
          ];
        };
      };
    };
  }