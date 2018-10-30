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
      specVersion = "1.6";
      identifier = {
        name = "Gtk2hsGenerics";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "michael.dever2@mail.dcu.ie";
      author = "Michael Dever";
      homepage = "";
      url = "";
      synopsis = "Convenience functions to extend Gtk2hs.";
      description = "Convenience functions to extend Gtk2hs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.glib)
          (hsPkgs.cairo)
          (hsPkgs.gtk)
        ];
      };
    };
  }