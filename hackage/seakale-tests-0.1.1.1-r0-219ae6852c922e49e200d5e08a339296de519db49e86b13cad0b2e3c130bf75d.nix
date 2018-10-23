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
        name = "seakale-tests";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomas.feron@redspline.com";
      author = "Thomas Feron";
      homepage = "";
      url = "";
      synopsis = "Helpers to test code using Seakale";
      description = "This package provides a way to run code written with Seakale with a fake database using mocks.";
      buildType = "Simple";
    };
    components = {
      "seakale-tests" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.seakale)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.free)
          (hsPkgs.recursion-schemes)
        ];
      };
    };
  }