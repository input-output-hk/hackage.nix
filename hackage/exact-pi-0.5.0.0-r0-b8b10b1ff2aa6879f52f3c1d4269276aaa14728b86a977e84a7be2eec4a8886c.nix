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
        name = "exact-pi";
        version = "0.5.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "douglas.mcclean@gmail.com";
      author = "Douglas McClean";
      homepage = "https://github.com/dmcclean/exact-pi/";
      url = "";
      synopsis = "Exact rational multiples of pi (and integer powers of pi)";
      description = "Provides an exact representation for rational multiples of pi alongside an approximate representation of all reals.\nUseful for storing and computing with conversion factors between physical units.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.numtype-dk)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.exact-pi)
            (hsPkgs.numtype-dk)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
        };
      };
    };
  }