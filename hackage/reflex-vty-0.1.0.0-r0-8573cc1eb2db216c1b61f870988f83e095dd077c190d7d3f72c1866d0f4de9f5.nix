{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "reflex-vty"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "";
      url = "";
      synopsis = "Reflex FRP host and widgets for vty applications";
      description = "Host and widget library for Reflex-based FRP applications\n\n<<./doc/welcome.gif>>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bimap)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.dependent-map)
          (hsPkgs.dependent-sum)
          (hsPkgs.exception-transformers)
          (hsPkgs.mtl)
          (hsPkgs.primitive)
          (hsPkgs.ref-tf)
          (hsPkgs.reflex)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.vty)
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.reflex)
            (hsPkgs.reflex-vty)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.vty)
            ];
          };
        };
      };
    }