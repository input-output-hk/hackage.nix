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
        name = "light";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Suzumiya";
      maintainer = "suzumiyasmith@gmail.com";
      author = "Suzumiya";
      homepage = "https://github.com/suzumiyasmith/light#readme";
      url = "";
      synopsis = "a simple physics engine";
      description = "A simple physics engine(dynamics only) with collision dection";
      buildType = "Simple";
    };
    components = {
      "light" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.linear)
          (hsPkgs.gjk2d)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "light-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.light)
            (hsPkgs.linear)
            (hsPkgs.lens)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }