{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "brick-dropdownmenu"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Mario Lang";
      maintainer = "mlang@blind.guru";
      author = "Mario Lang";
      homepage = "https://github.com/mlang/brick-dropdownmenu#readme";
      url = "";
      synopsis = "A drop-down menu widget for brick.";
      description = "A simple drop-down menu widget for the declarative text user interface library brick.\nEach submenu and menu item can have an associated global key binding.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.brick)
          (hsPkgs.containers)
          (hsPkgs.microlens)
          (hsPkgs.microlens-ghc)
          (hsPkgs.microlens-th)
          (hsPkgs.pointedlist)
          (hsPkgs.vector)
          (hsPkgs.vty)
          ];
        };
      exes = {
        "brick-dropdownmenu-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.brick-dropdownmenu)
            (hsPkgs.containers)
            (hsPkgs.microlens)
            (hsPkgs.microlens-ghc)
            (hsPkgs.microlens-th)
            (hsPkgs.pointedlist)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.vty)
            ];
          };
        };
      };
    }