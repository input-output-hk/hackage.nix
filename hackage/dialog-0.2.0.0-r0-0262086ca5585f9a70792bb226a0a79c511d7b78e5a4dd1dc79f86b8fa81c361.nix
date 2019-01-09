{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dialog"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Nikita Churaev";
      maintainer = "Nikita Churaev <lamefun.x0r@gmail.com>";
      author = "Nikita Churaev <lamefun.x0r@gmail.com>";
      homepage = "https://gitlab.com/lamefun/dialog";
      url = "";
      synopsis = "Simple dialog-based user interfaces";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.filepath)
          (hsPkgs.glib)
          (hsPkgs.gtk3)
          (hsPkgs.webkitgtk3)
          (hsPkgs.open-browser)
          ];
        };
      };
    }