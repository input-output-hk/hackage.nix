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
        name = "nondeterminism";
        version = "1.4";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Andrei Barbu <andrei@0xab.com>";
      author = "Andrei Barbu <andrei@0xab.com>";
      homepage = "";
      url = "";
      synopsis = "A monad and monad transformer for nondeterministic computations.";
      description = "Nondeterministic computations";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "AmbTests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.nondeterminism)
          ];
        };
      };
    };
  }