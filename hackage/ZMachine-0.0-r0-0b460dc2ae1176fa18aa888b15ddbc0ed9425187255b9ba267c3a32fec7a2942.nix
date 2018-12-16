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
      specVersion = "0";
      identifier = {
        name = "ZMachine";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Samuel Bronson <naesten@gmail.com>";
      author = "Samuel Bronson";
      homepage = "";
      url = "";
      synopsis = "A Z-machine interpreter";
      description = "ZMachine is a Z-machine (Infocom's interactive fiction VM) interpreter\nwhich currently needs attention to its UI rather badly. It uses Gtk2Hs,\nbut it just goes down hill from there. Help welcome!\n\nThe Darcs repository can be found at <http://naesten.dyndns.org:8080/repos/ZMachine>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "zmachine" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.gtk)
            (hsPkgs.array)
            (hsPkgs.random)
          ];
        };
      };
    };
  }