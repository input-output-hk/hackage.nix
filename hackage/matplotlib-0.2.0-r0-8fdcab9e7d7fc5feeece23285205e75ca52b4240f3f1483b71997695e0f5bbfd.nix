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
        name = "matplotlib";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Andrei Barbu";
      maintainer = "andrei@0xab.com";
      author = "Andrei Barbu";
      homepage = "https://github.com/abarbu/matplotlib-haskell";
      url = "";
      synopsis = "Bindings to Matplotlib; a Python plotting library";
      description = "Matplotlib is probably the most full featured plotting library out there. These bindings provide a quick, easy, and extensible way to use it in Haskell. Type-safety is largely non-existent and sacrificed for maximum extensibility.";
      buildType = "Simple";
    };
    components = {
      "matplotlib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.temporary)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "matplotlib-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.matplotlib)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.temporary)
          ];
        };
      };
    };
  }