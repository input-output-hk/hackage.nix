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
        name = "osdkeys";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Show keys pressed with an on-screen display (Linux only)";
      description = "This program uses the xinput program to get a stream of key presses\nand uses the libnotify library to display them on-screen.\n\nCurrently supported display notations are: Emacs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.libnotify)
          (hsPkgs.resourcet)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "osdkeys" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.osdkeys)
            (hsPkgs.process)
          ];
        };
      };
    };
  }