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
        name = "hXmixer";
        version = "0.2.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "colin@colinrmitchell.endoftheinternet.org";
      author = "Colin Mitchell";
      homepage = "";
      url = "";
      synopsis = "A Gtk mixer GUI application for FreeBSD";
      description = "A Gtk mixer GUI application for FreeBSD";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hxmixer" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gtk3)
            (hsPkgs.split)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
      };
    };
  }