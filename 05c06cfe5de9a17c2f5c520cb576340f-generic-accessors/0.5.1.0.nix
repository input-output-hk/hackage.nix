{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "generic-accessors";
        version = "0.5.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2015, Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "stringly-named getters for generic data";
      description = "Get a Tree or list of (String, Lens a X) pairs for use in plotting and data inspection";
      buildType = "Simple";
    };
    components = {
      "generic-accessors" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.linear)
          (hsPkgs.spatial-math)
          (hsPkgs.lens)
        ];
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.generic-accessors)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.base)
          ];
        };
      };
    };
  }