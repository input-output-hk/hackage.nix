{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "csp";
        version = "1.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Andrei Barbu <andrei@0xab.com>";
      author = "Andrei Barbu <andrei@0xab.com>";
      homepage = "";
      url = "";
      synopsis = "Discrete constraint satisfaction problem (CSP) solvers.";
      description = "Constraint satisfaction problem (CSP) solvers";
      buildType = "Simple";
    };
    components = {
      "csp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.nondeterminism)
        ];
      };
    };
  }