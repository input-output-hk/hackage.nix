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
      specVersion = "1.8";
      identifier = {
        name = "DCFL";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "dpandya@college.harvard.edu";
      author = "Dhaivat Pandya";
      homepage = "https://github.com/Poincare/DCFL";
      url = "";
      synopsis = "Communication Free Learning-based constraint solver";
      description = "A serialized and centralized implementation of Communication Free Learning, a technique used to solve Constraint Satisfcation Problems (CSPs) in a parallelizable manner.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.HUnit)
        ];
      };
    };
  }