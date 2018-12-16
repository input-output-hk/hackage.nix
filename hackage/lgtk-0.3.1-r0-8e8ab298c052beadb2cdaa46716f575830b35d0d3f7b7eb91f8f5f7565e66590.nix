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
      specVersion = "1.8";
      identifier = {
        name = "lgtk";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divipp@gmail.com";
      author = "Péter Diviánszky";
      homepage = "http://people.inf.elte.hu/divip/LGtk/index.html";
      url = "";
      synopsis = "lens-based GUI with Gtk backend";
      description = "The main interface of LGtk is \"GUI.MLens.Gtk\".\n\nSee also <http://people.inf.elte.hu/divip/LGtk/index.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.control-monad-free)
          (hsPkgs.gtk)
        ];
      };
      exes = {
        "lgtkdemo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.lgtk)
          ];
        };
      };
    };
  }