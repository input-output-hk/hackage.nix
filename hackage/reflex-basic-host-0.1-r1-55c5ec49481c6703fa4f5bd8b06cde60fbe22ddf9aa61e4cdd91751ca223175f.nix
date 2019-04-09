{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reflex-basic-host"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dave.laing.80@gmail.com";
      author = "Dave Laing";
      homepage = "";
      url = "";
      synopsis = "A basic `reflex` host for backend work";
      description = "A basic `reflex` host for backend work.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.ref-tf)
          (hsPkgs.dependent-sum)
          (hsPkgs.dependent-map)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.reflex)
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.reflex)
            (hsPkgs.reflex-basic-host)
            ];
          };
        "counter" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.reflex)
            (hsPkgs.reflex-basic-host)
            ];
          };
        };
      };
    }