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
        name = "kansas-lava-shake";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2014 Gergő Érdi";
      maintainer = "Gergo Erdi <gergo@erdi.hu>";
      author = "Gergo Erdi";
      homepage = "";
      url = "";
      synopsis = "Shake rules for building Kansas Lava projects";
      description = "Shake rules for building Kansas Lava projects. Currently supports the\nXilinx FPGA tooling only.";
      buildType = "Simple";
    };
    components = {
      "kansas-lava-shake" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.kansas-lava)
          (hsPkgs.shake)
          (hsPkgs.text)
          (hsPkgs.mustache)
          (hsPkgs.vector)
          (hsPkgs.containers)
        ];
      };
    };
  }