{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "prim-array";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/prim-array#readme";
      url = "";
      synopsis = "Primitive byte array with type variable";
      description = "";
      buildType = "Simple";
    };
    components = {
      "prim-array" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }