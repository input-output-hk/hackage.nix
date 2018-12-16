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
        name = "formura";
        version = "1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "http://nushio3.github.io";
      url = "";
      synopsis = "Formura is a simple language to describe stencil computation.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.containers)
          (hsPkgs.either)
          (hsPkgs.lattices)
          (hsPkgs.lens)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.parsers)
          (hsPkgs.QuickCheck)
          (hsPkgs.text)
          (hsPkgs.trifecta)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "formura-parser" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.formura)
            (hsPkgs.trifecta)
          ];
        };
        "formura-eval" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.lens)
            (hsPkgs.formura)
            (hsPkgs.trifecta)
          ];
        };
        "formura-gen" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.formura)
            (hsPkgs.text)
            (hsPkgs.trifecta)
          ];
        };
      };
    };
  }