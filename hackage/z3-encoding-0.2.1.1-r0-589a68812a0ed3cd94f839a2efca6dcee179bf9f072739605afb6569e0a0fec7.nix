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
        name = "z3-encoding";
        version = "0.2.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "izgzhen@gmail.com";
      author = "Zhen Zhang";
      homepage = "";
      url = "";
      synopsis = "High-level assertion encoding to Z3 solver";
      description = "A library targeting at providing high-level, extensible, easy to use Haskell interface to Z3 solver.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.z3)
        ];
      };
      tests = {
        "z3-encoding-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.z3)
            (hsPkgs.z3-encoding)
            (hsPkgs.hspec)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }