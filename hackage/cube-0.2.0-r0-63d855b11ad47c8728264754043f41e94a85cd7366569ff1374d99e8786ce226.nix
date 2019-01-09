{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { sample = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cube"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "";
      url = "";
      synopsis = "Cubic DSL for 3D printing";
      description = "Cube is DSL for 3D printing.\n\nThis indents to make original blocks and prototypes for hobby.\n\nThis DSL is based on mathematical algebra.\n\nCube is the same as Quaternion.\n\nBlock is set of Cube. It allows boolean operations(and, subtruct and convolution).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.STL)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          ];
        };
      exes = {
        "house" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cube)
            (hsPkgs.STL)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cube)
            (hsPkgs.STL)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }