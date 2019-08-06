{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "RSolve"; version = "2.0.0.0"; };
      license = "MIT";
      copyright = "2018, 2019 thautwarm";
      maintainer = "twshere@outlook.com";
      author = "thautwarm";
      homepage = "https://github.com/thautwarm/RSolve#readme";
      url = "";
      synopsis = "";
      description = "A general solver for equations";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          ];
        };
      exes = {
        "RSolve-exe" = {
          depends = [
            (hsPkgs.RSolve)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            ];
          };
        };
      tests = {
        "RSolve-test" = {
          depends = [
            (hsPkgs.RSolve)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }