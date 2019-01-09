{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "wtk-gtk"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Bartosz Wojcik";
      maintainer = "Bartosz Wojcik <bartoszmwojcik@gmail.com>";
      author = "Bartosz Wojcik";
      homepage = "";
      url = "";
      synopsis = "GTK tools within Wojcik Tool Kit";
      description = "Set of simple tools for standardized development of UI where\ninput is set of fields of certain (though various) types\nand there is defined business logic between the fields, values\nthey can accept. Helps with error messages for user.\nIt's idea is separation of presentation layer and business logic.\nThis succeed but at certain costs.\nTool is definetely experimental. Contains lots of awkward hacks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.gtk)
          (hsPkgs.mtl)
          (hsPkgs.wtk)
          (hsPkgs.lenses)
          ];
        };
      };
    }