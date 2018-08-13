{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0.2";
      identifier = {
        name = "barrie";
        version = "0.3.1";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Fraser Wilson";
      maintainer = "blancolioni@gmail.com";
      author = "Fraser Wilson";
      homepage = "";
      url = "";
      synopsis = "Pure Gtk GUI library";
      description = "Implementation of an idea for supporting certain kinds of GUI:\nthat is state based, user-driven ones.  The GUI is intended to\nmanipulate a state, and it is responsive rather than active.\nConfiguration is an example.";
      buildType = "Simple";
    };
    components = {
      "barrie" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.gtk)
          (hsPkgs.glib)
          (hsPkgs.containers)
        ];
      };
    };
  }