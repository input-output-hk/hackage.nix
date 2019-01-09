{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "generic-accessors"; version = "0.6.0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.linear)
          (hsPkgs.spatial-math)
          (hsPkgs.lens)
          (hsPkgs.cereal)
          (hsPkgs.TypeCompose)
          (hsPkgs.binary)
          ];
        };
      tests = {
        "unit-tests" = {
          depends = [
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